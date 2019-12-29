function memory(giga) {
  cdRom = Math.ceil((giga * 1024) / 700);
  return cdRom;
}

module.exports = memory;
