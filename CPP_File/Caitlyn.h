#pragma once

#include "Script.h"

class Caitlyn : public IScript {
private:
	Champion champion;

	virtual void OnKeyDown(int vKey);

	virtual void OnKeyUp(int vKey);

	virtual void Harass();

	virtual bool Evade(Vector evadePos);

public:
	Caitlyn() : champion(Champion::Caitlyn) {

	}
};