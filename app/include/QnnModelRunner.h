#pragma once
#include <string>

class QnnModelRunner {
public:
    bool loadModel(const std::string& modelPath);
    std::string runInference(const std::string& prompt);
};
