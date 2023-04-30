.PHONY: release

debug:
	cargo build --bin msl
	codesign -f --entitlement virtualization_rs.entitlements -s - target/debug/msl

release:
	cargo build --release --bin msl
	codesign -f --entitlement virtualization_rs.entitlements -s - target/release/msl

check:
	cargo check

clean:
	cargo clean
