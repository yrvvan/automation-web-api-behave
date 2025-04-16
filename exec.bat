@echo off
set TAG=%1

echo ============================
echo  Running Behave Tests...
echo  Tag: %TAG%
echo ============================

echo Cleaning up previous Allure reports...
rmdir /s /q allure-report
rmdir /s /q allure-results

IF "%TAG%"=="" (
    behave -f allure_behave.formatter:AllureFormatter -o allure-results
) ELSE (
    behave -f allure_behave.formatter:AllureFormatter -o allure-results -i %TAG%
)

echo Generating and Open Allure Report...
allure generate allure-results --clean -o allure-report && allure open allure-report
