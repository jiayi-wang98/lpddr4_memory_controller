// file = 0; split type = patterns; threshold = 100000; total count = 0.
#include <stdio.h>
#include <stdlib.h>
#include <strings.h>
#include "rmapats.h"

void  hsG_0__0 (struct dummyq_struct * I1352, EBLK  * I1347, U  I709);
void  hsG_0__0 (struct dummyq_struct * I1352, EBLK  * I1347, U  I709)
{
    U  I1612;
    U  I1613;
    U  I1614;
    struct futq * I1615;
    struct dummyq_struct * pQ = I1352;
    I1612 = ((U )vcs_clocks) + I709;
    I1614 = I1612 & ((1 << fHashTableSize) - 1);
    I1347->I754 = (EBLK  *)(-1);
    I1347->I755 = I1612;
    if (0 && rmaProfEvtProp) {
        vcs_simpSetEBlkEvtID(I1347);
    }
    if (I1612 < (U )vcs_clocks) {
        I1613 = ((U  *)&vcs_clocks)[1];
        sched_millenium(pQ, I1347, I1613 + 1, I1612);
    }
    else if ((peblkFutQ1Head != ((void *)0)) && (I709 == 1)) {
        I1347->I757 = (struct eblk *)peblkFutQ1Tail;
        peblkFutQ1Tail->I754 = I1347;
        peblkFutQ1Tail = I1347;
    }
    else if ((I1615 = pQ->I1255[I1614].I777)) {
        I1347->I757 = (struct eblk *)I1615->I775;
        I1615->I775->I754 = (RP )I1347;
        I1615->I775 = (RmaEblk  *)I1347;
    }
    else {
        sched_hsopt(pQ, I1347, I1612);
    }
}
#ifdef __cplusplus
extern "C" {
#endif
void SinitHsimPats(void);
#ifdef __cplusplus
}
#endif
