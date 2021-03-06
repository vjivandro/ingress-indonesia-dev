.class Lcom/badlogic/gdx/utils/ComparableTimSort;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final MIN_GALLOP:I = 0x7

.field private static final MIN_MERGE:I = 0x20


# instance fields
.field private a:[Ljava/lang/Object;

.field private minGallop:I

.field private final runBase:[I

.field private final runLen:[I

.field private stackSize:I

.field private tmp:[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x28

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x7

    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    .line 70
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 71
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    .line 72
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    .line 73
    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x7

    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    .line 123
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 126
    array-length v1, p1

    .line 127
    const/16 v0, 0x200

    if-ge v1, v0, :cond_0

    ushr-int/lit8 v0, v1, 0x1

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 128
    iput-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 137
    const/16 v0, 0x78

    if-ge v1, v0, :cond_1

    const/4 v0, 0x5

    .line 138
    :goto_1
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    .line 139
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    .line 140
    return-void

    .line 127
    :cond_0
    const/16 v0, 0x100

    goto :goto_0

    .line 137
    :cond_1
    const/16 v0, 0x606

    if-ge v1, v0, :cond_2

    const/16 v0, 0xa

    goto :goto_1

    :cond_2
    const v0, 0x1d16f

    if-ge v1, v0, :cond_3

    const/16 v0, 0x13

    goto :goto_1

    :cond_3
    const/16 v0, 0x28

    goto :goto_1
.end method

.method private static binarySort([Ljava/lang/Object;III)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 206
    if-ne p3, p1, :cond_3

    add-int/lit8 v2, p3, 0x1

    .line 207
    :goto_0
    if-ge v2, p2, :cond_2

    .line 209
    aget-object v0, p0, v2

    check-cast v0, Ljava/lang/Comparable;

    move v1, v2

    move v4, p1

    .line 218
    :goto_1
    if-ge v4, v1, :cond_1

    .line 219
    add-int v3, v4, v1

    ushr-int/lit8 v3, v3, 0x1

    .line 220
    aget-object v5, p0, v3

    invoke-interface {v0, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_0

    move v1, v3

    .line 221
    goto :goto_1

    .line 223
    :cond_0
    add-int/lit8 v3, v3, 0x1

    move v4, v3

    .line 224
    goto :goto_1

    .line 232
    :cond_1
    sub-int v1, v2, v4

    .line 234
    packed-switch v1, :pswitch_data_0

    .line 241
    add-int/lit8 v3, v4, 0x1

    invoke-static {p0, v4, p0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 243
    :goto_2
    aput-object v0, p0, v4

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    :pswitch_0
    add-int/lit8 v1, v4, 0x2

    add-int/lit8 v3, v4, 0x1

    aget-object v3, p0, v3

    aput-object v3, p0, v1

    .line 238
    :pswitch_1
    add-int/lit8 v1, v4, 0x1

    aget-object v3, p0, v4

    aput-object v3, p0, v1

    goto :goto_2

    .line 245
    :cond_2
    return-void

    :cond_3
    move v2, p3

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;II)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    add-int/lit8 v0, p1, 0x1

    .line 269
    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    .line 281
    :goto_0
    return v0

    .line 272
    :cond_0
    add-int/lit8 v1, v0, 0x1

    aget-object v0, p0, v0

    check-cast v0, Ljava/lang/Comparable;

    aget-object v2, p0, p1

    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    .line 273
    :goto_1
    if-ge v1, p2, :cond_1

    aget-object v0, p0, v1

    check-cast v0, Ljava/lang/Comparable;

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p0, v2

    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 275
    :cond_1
    invoke-static {p0, p1, v1}, Lcom/badlogic/gdx/utils/ComparableTimSort;->reverseRange([Ljava/lang/Object;II)V

    move v0, v1

    .line 281
    :goto_2
    sub-int/2addr v0, p1

    goto :goto_0

    .line 277
    :cond_2
    :goto_3
    if-ge v1, p2, :cond_3

    aget-object v0, p0, v1

    check-cast v0, Ljava/lang/Comparable;

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p0, v2

    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 764
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    .line 766
    shr-int/lit8 v0, p1, 0x1

    or-int/2addr v0, p1

    .line 768
    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 769
    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 770
    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 771
    shr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 772
    add-int/lit8 v0, v0, 0x1

    .line 774
    if-gez v0, :cond_1

    .line 779
    :goto_0
    new-array v0, p1, [Ljava/lang/Object;

    .line 780
    iput-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    return-object v0

    .line 777
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    array-length v1, v1

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0
.end method

.method private static gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "III)I"
        }
    .end annotation

    .prologue
    .line 428
    const/4 v2, 0x0

    .line 429
    const/4 v1, 0x1

    .line 430
    add-int v0, p2, p4

    aget-object v0, p1, v0

    invoke-interface {p0, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1

    .line 432
    sub-int v0, p3, p4

    .line 433
    :goto_0
    if-ge v1, v0, :cond_0

    add-int v3, p2, p4

    add-int/2addr v3, v1

    aget-object v3, p1, v3

    invoke-interface {p0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    .line 435
    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 436
    if-gtz v2, :cond_8

    move v2, v1

    move v1, v0

    .line 437
    goto :goto_0

    .line 439
    :cond_0
    if-le v1, v0, :cond_7

    .line 442
    :goto_1
    add-int v1, v2, p4

    .line 443
    add-int/2addr v0, p4

    .line 466
    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .line 467
    :goto_3
    if-ge v2, v0, :cond_4

    .line 468
    sub-int v1, v0, v2

    ushr-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v2

    .line 470
    add-int v3, p2, v1

    aget-object v3, p1, v3

    invoke-interface {p0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_3

    .line 471
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    goto :goto_3

    .line 446
    :cond_1
    add-int/lit8 v0, p4, 0x1

    .line 447
    :goto_4
    if-ge v1, v0, :cond_2

    add-int v3, p2, p4

    sub-int/2addr v3, v1

    aget-object v3, p1, v3

    invoke-interface {p0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_2

    .line 449
    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 450
    if-gtz v2, :cond_6

    move v2, v1

    move v1, v0

    .line 451
    goto :goto_4

    .line 453
    :cond_2
    if-le v1, v0, :cond_5

    .line 457
    :goto_5
    sub-int v1, p4, v0

    .line 458
    sub-int v0, p4, v2

    goto :goto_2

    :cond_3
    move v0, v1

    .line 474
    goto :goto_3

    .line 476
    :cond_4
    return v0

    :cond_5
    move v0, v1

    goto :goto_5

    :cond_6
    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_0
.end method

.method private static gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "III)I"
        }
    .end annotation

    .prologue
    .line 492
    const/4 v2, 0x1

    .line 493
    const/4 v1, 0x0

    .line 494
    add-int v0, p2, p4

    aget-object v0, p1, v0

    invoke-interface {p0, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    .line 496
    add-int/lit8 v0, p4, 0x1

    move v4, v1

    move v1, v2

    move v2, v4

    .line 497
    :goto_0
    if-ge v1, v0, :cond_0

    add-int v3, p2, p4

    sub-int/2addr v3, v1

    aget-object v3, p1, v3

    invoke-interface {p0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    .line 499
    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 500
    if-gtz v2, :cond_8

    move v2, v1

    move v1, v0

    .line 501
    goto :goto_0

    .line 503
    :cond_0
    if-le v1, v0, :cond_7

    .line 507
    :goto_1
    sub-int v0, p4, v0

    .line 508
    sub-int v1, p4, v2

    .line 530
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 531
    :goto_3
    if-ge v0, v1, :cond_4

    .line 532
    sub-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    .line 534
    add-int v3, p2, v2

    aget-object v3, p1, v3

    invoke-interface {p0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_3

    move v1, v2

    .line 535
    goto :goto_3

    .line 511
    :cond_1
    sub-int v0, p3, p4

    move v4, v1

    move v1, v2

    move v2, v4

    .line 512
    :goto_4
    if-ge v1, v0, :cond_2

    add-int v3, p2, p4

    add-int/2addr v3, v1

    aget-object v3, p1, v3

    invoke-interface {p0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 514
    shl-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 515
    if-gtz v2, :cond_6

    move v2, v1

    move v1, v0

    .line 516
    goto :goto_4

    .line 518
    :cond_2
    if-le v1, v0, :cond_5

    .line 521
    :goto_5
    add-int v1, v2, p4

    .line 522
    add-int/2addr v0, p4

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_2

    .line 537
    :cond_3
    add-int/lit8 v0, v2, 0x1

    .line 538
    goto :goto_3

    .line 540
    :cond_4
    return v1

    :cond_5
    move v0, v1

    goto :goto_5

    :cond_6
    move v4, v1

    move v1, v2

    move v2, v4

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    move v4, v1

    move v1, v2

    move v2, v4

    goto :goto_0
.end method

.method private mergeAt(I)V
    .locals 8
    .parameter

    .prologue
    .line 370
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    aget v1, v0, p1

    .line 371
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    aget v2, v0, p1

    .line 372
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    .line 373
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    .line 381
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int v5, v2, v4

    aput v5, v0, p1

    .line 382
    iget v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x3

    if-ne p1, v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    add-int/lit8 v7, p1, 0x2

    aget v6, v6, v7

    aput v6, v0, v5

    .line 384
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v7, p1, 0x2

    aget v6, v6, v7

    aput v6, v0, v5

    .line 386
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    .line 392
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/Comparable;

    iget-object v5, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0, v5, v1, v2, v6}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v0

    .line 394
    add-int/2addr v1, v0

    .line 395
    sub-int/2addr v2, v0

    .line 396
    if-nez v2, :cond_2

    .line 411
    :cond_1
    :goto_0
    return-void

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    add-int v5, v1, v2

    add-int/lit8 v5, v5, -0x1

    aget-object v0, v0, v5

    check-cast v0, Ljava/lang/Comparable;

    iget-object v5, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    add-int/lit8 v6, v4, -0x1

    invoke-static {v0, v5, v3, v4, v6}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v0

    .line 404
    if-eqz v0, :cond_1

    .line 407
    if-gt v2, v0, :cond_3

    .line 408
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeLo(IIII)V

    goto :goto_0

    .line 410
    :cond_3
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeHi(IIII)V

    goto :goto_0
.end method

.method private mergeCollapse()V
    .locals 5

    .prologue
    .line 338
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 339
    iget v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x2

    .line 340
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_1

    .line 341
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 342
    :cond_0
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_2

    .line 344
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    .line 349
    :cond_2
    return-void
.end method

.method private mergeForceCollapse()V
    .locals 4

    .prologue
    .line 353
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 354
    iget v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x2

    .line 355
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 356
    :cond_0
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeAt(I)V

    goto :goto_0

    .line 358
    :cond_1
    return-void
.end method

.method private mergeHi(IIII)V
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 663
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 664
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v11

    .line 665
    const/4 v2, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v10, v0, v11, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 667
    add-int v2, p1, p2

    add-int/lit8 v2, v2, -0x1

    .line 668
    add-int/lit8 v4, p4, -0x1

    .line 669
    add-int v3, p3, p4

    add-int/lit8 v6, v3, -0x1

    .line 672
    add-int/lit8 v3, v6, -0x1

    add-int/lit8 v5, v2, -0x1

    aget-object v2, v10, v2

    aput-object v2, v10, v6

    .line 673
    add-int/lit8 v6, p2, -0x1

    if-nez v6, :cond_0

    .line 674
    const/4 v2, 0x0

    sub-int/2addr v3, v4

    move/from16 v0, p4

    invoke-static {v11, v2, v10, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 756
    :goto_0
    return-void

    .line 677
    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_1

    .line 678
    sub-int v2, v3, v6

    .line 679
    sub-int v3, v5, v6

    .line 680
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v2, 0x1

    invoke-static {v10, v3, v10, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 681
    aget-object v3, v11, v4

    aput-object v3, v10, v2

    goto :goto_0

    .line 685
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    move v14, v2

    move v2, v3

    move v3, v14

    .line 688
    :goto_1
    const/4 v8, 0x0

    .line 689
    const/4 v7, 0x0

    move v9, v6

    move v6, v2

    move v14, v8

    move v8, v5

    move v5, v14

    move v15, v4

    move v4, v7

    move v7, v15

    .line 696
    :goto_2
    aget-object v2, v11, v7

    check-cast v2, Ljava/lang/Comparable;

    aget-object v12, v10, v8

    invoke-interface {v2, v12}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    .line 697
    add-int/lit8 v2, v6, -0x1

    add-int/lit8 v4, v8, -0x1

    aget-object v8, v10, v8

    aput-object v8, v10, v6

    .line 698
    add-int/lit8 v6, v5, 0x1

    .line 699
    const/4 v5, 0x0

    .line 700
    add-int/lit8 v9, v9, -0x1

    if-nez v9, :cond_12

    move v8, v4

    move v4, v7

    move v14, v2

    move v2, v3

    move v3, v14

    .line 741
    :goto_3
    if-gtz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    .line 743
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_8

    .line 745
    sub-int v2, v3, v9

    .line 746
    sub-int v3, v8, v9

    .line 747
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v2, 0x1

    invoke-static {v10, v3, v10, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 748
    aget-object v3, v11, v4

    aput-object v3, v10, v2

    goto :goto_0

    .line 702
    :cond_3
    add-int/lit8 v5, v6, -0x1

    add-int/lit8 v2, v7, -0x1

    aget-object v7, v11, v7

    aput-object v7, v10, v6

    .line 703
    add-int/lit8 v4, v4, 0x1

    .line 704
    const/4 v6, 0x0

    .line 705
    add-int/lit8 p4, p4, -0x1

    const/4 v7, 0x1

    move/from16 v0, p4

    if-eq v0, v7, :cond_11

    move v7, v8

    move v8, v9

    move v14, v2

    move v2, v4

    move v4, v6

    move v6, v14

    .line 707
    :goto_4
    or-int v9, v4, v2

    if-lt v9, v3, :cond_10

    move v14, v3

    move v3, v7

    move v7, v14

    .line 715
    :goto_5
    aget-object v2, v11, v6

    check-cast v2, Ljava/lang/Comparable;

    add-int/lit8 v4, v8, -0x1

    move/from16 v0, p1

    invoke-static {v2, v10, v0, v8, v4}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v2

    sub-int v12, v8, v2

    .line 716
    if-eqz v12, :cond_4

    .line 717
    sub-int/2addr v5, v12

    .line 718
    sub-int/2addr v3, v12

    .line 719
    sub-int/2addr v8, v12

    .line 720
    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v4, v5, 0x1

    invoke-static {v10, v2, v10, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 721
    if-eqz v8, :cond_f

    :cond_4
    move v9, v8

    move v8, v3

    .line 723
    add-int/lit8 v3, v5, -0x1

    add-int/lit8 v4, v6, -0x1

    aget-object v2, v11, v6

    aput-object v2, v10, v5

    .line 724
    add-int/lit8 p4, p4, -0x1

    const/4 v2, 0x1

    move/from16 v0, p4

    if-eq v0, v2, :cond_e

    .line 726
    aget-object v2, v10, v8

    check-cast v2, Ljava/lang/Comparable;

    const/4 v5, 0x0

    add-int/lit8 v6, p4, -0x1

    move/from16 v0, p4

    invoke-static {v2, v11, v5, v0, v6}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v2

    sub-int v13, p4, v2

    .line 727
    if-eqz v13, :cond_d

    .line 728
    sub-int v2, v3, v13

    .line 729
    sub-int/2addr v4, v13

    .line 730
    sub-int p4, p4, v13

    .line 731
    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v5, v2, 0x1

    invoke-static {v11, v3, v10, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 732
    const/4 v3, 0x1

    move/from16 v0, p4

    if-le v0, v3, :cond_c

    .line 734
    :goto_6
    add-int/lit8 v3, v2, -0x1

    add-int/lit8 v5, v8, -0x1

    aget-object v6, v10, v8

    aput-object v6, v10, v2

    .line 735
    add-int/lit8 v6, v9, -0x1

    if-eqz v6, :cond_b

    .line 736
    add-int/lit8 v2, v7, -0x1

    .line 737
    const/4 v7, 0x7

    if-lt v12, v7, :cond_6

    const/4 v7, 0x1

    move v8, v7

    :goto_7
    const/4 v7, 0x7

    if-lt v13, v7, :cond_7

    const/4 v7, 0x1

    :goto_8
    or-int/2addr v7, v8

    if-nez v7, :cond_a

    .line 738
    if-gez v2, :cond_5

    const/4 v2, 0x0

    .line 739
    :cond_5
    add-int/lit8 v2, v2, 0x2

    move v14, v2

    move v2, v3

    move v3, v14

    .line 740
    goto/16 :goto_1

    .line 737
    :cond_6
    const/4 v7, 0x0

    move v8, v7

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    goto :goto_8

    .line 749
    :cond_8
    if-nez p4, :cond_9

    .line 750
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Comparison method violates its general contract!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 754
    :cond_9
    const/4 v2, 0x0

    add-int/lit8 v4, p4, -0x1

    sub-int/2addr v3, v4

    move/from16 v0, p4

    invoke-static {v11, v2, v10, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_a
    move v7, v2

    move v8, v6

    move v6, v4

    move v14, v5

    move v5, v3

    move v3, v14

    goto/16 :goto_5

    :cond_b
    move v2, v7

    move v8, v5

    move v9, v6

    goto/16 :goto_3

    :cond_c
    move v3, v2

    move v2, v7

    goto/16 :goto_3

    :cond_d
    move v2, v3

    goto :goto_6

    :cond_e
    move v2, v7

    goto/16 :goto_3

    :cond_f
    move v2, v7

    move v4, v6

    move v9, v8

    move v8, v3

    move v3, v5

    goto/16 :goto_3

    :cond_10
    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v2

    goto/16 :goto_2

    :cond_11
    move v4, v2

    move v2, v3

    move v3, v5

    goto/16 :goto_3

    :cond_12
    move v8, v9

    move v14, v6

    move v6, v7

    move v7, v4

    move v4, v14

    move v15, v2

    move v2, v5

    move v5, v15

    goto/16 :goto_4
.end method

.method private mergeLo(IIII)V
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 559
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 560
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v11

    .line 561
    const/4 v2, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v10, v0, v11, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    const/4 v5, 0x0

    .line 568
    add-int/lit8 v3, p1, 0x1

    add-int/lit8 v4, p3, 0x1

    aget-object v2, v10, p3

    aput-object v2, v10, p1

    .line 569
    add-int/lit8 v6, p4, -0x1

    if-nez v6, :cond_0

    .line 570
    const/4 v2, 0x0

    move/from16 v0, p2

    invoke-static {v11, v2, v10, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 649
    :goto_0
    return-void

    .line 573
    :cond_0
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 574
    invoke-static {v10, v4, v10, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    add-int v2, v3, v6

    const/4 v3, 0x0

    aget-object v3, v11, v3

    aput-object v3, v10, v2

    goto :goto_0

    .line 579
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    move v14, v2

    move v2, v3

    move v3, v14

    .line 582
    :goto_1
    const/4 v8, 0x0

    .line 583
    const/4 v7, 0x0

    move v9, v6

    move v6, v2

    move v14, v8

    move v8, v5

    move v5, v14

    move v15, v4

    move v4, v7

    move v7, v15

    .line 590
    :goto_2
    aget-object v2, v10, v7

    check-cast v2, Ljava/lang/Comparable;

    aget-object v12, v11, v8

    invoke-interface {v2, v12}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    .line 591
    add-int/lit8 v5, v6, 0x1

    add-int/lit8 v2, v7, 0x1

    aget-object v7, v10, v7

    aput-object v7, v10, v6

    .line 592
    add-int/lit8 v4, v4, 0x1

    .line 593
    const/4 v7, 0x0

    .line 594
    add-int/lit8 v6, v9, -0x1

    if-nez v6, :cond_12

    move v4, v2

    move v9, v8

    move v2, v3

    move v3, v5

    .line 636
    :goto_3
    if-gtz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    move-object/from16 v0, p0

    iput v2, v0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    .line 638
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_8

    .line 640
    invoke-static {v10, v4, v10, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 641
    add-int v2, v3, v6

    aget-object v3, v11, v9

    aput-object v3, v10, v2

    goto :goto_0

    .line 596
    :cond_3
    add-int/lit8 v2, v6, 0x1

    add-int/lit8 v4, v8, 0x1

    aget-object v8, v11, v8

    aput-object v8, v10, v6

    .line 597
    add-int/lit8 v6, v5, 0x1

    .line 598
    const/4 v5, 0x0

    .line 599
    add-int/lit8 p2, p2, -0x1

    const/4 v8, 0x1

    move/from16 v0, p2

    if-eq v0, v8, :cond_11

    move v8, v9

    move v14, v6

    move v6, v7

    move v7, v4

    move v4, v14

    move v15, v2

    move v2, v5

    move v5, v15

    .line 601
    :goto_4
    or-int v9, v4, v2

    if-lt v9, v3, :cond_10

    move v14, v3

    move v3, v7

    move v7, v14

    .line 609
    :goto_5
    aget-object v2, v10, v6

    check-cast v2, Ljava/lang/Comparable;

    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-static {v2, v11, v3, v0, v4}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v12

    .line 610
    if-eqz v12, :cond_4

    .line 611
    invoke-static {v11, v3, v10, v5, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 612
    add-int/2addr v5, v12

    .line 613
    add-int/2addr v3, v12

    .line 614
    sub-int p2, p2, v12

    .line 615
    const/4 v2, 0x1

    move/from16 v0, p2

    if-le v0, v2, :cond_f

    :cond_4
    move v9, v3

    .line 616
    add-int/lit8 v3, v5, 0x1

    add-int/lit8 v4, v6, 0x1

    aget-object v2, v10, v6

    aput-object v2, v10, v5

    .line 619
    add-int/lit8 v6, v8, -0x1

    if-eqz v6, :cond_e

    .line 621
    aget-object v2, v11, v9

    check-cast v2, Ljava/lang/Comparable;

    const/4 v5, 0x0

    invoke-static {v2, v10, v4, v6, v5}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v13

    .line 622
    if-eqz v13, :cond_d

    .line 623
    invoke-static {v10, v4, v10, v3, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 624
    add-int v2, v3, v13

    .line 625
    add-int/2addr v4, v13

    .line 626
    sub-int/2addr v6, v13

    .line 627
    if-eqz v6, :cond_c

    .line 629
    :goto_6
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v5, v9, 0x1

    aget-object v8, v11, v9

    aput-object v8, v10, v2

    .line 630
    add-int/lit8 p2, p2, -0x1

    const/4 v2, 0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_b

    .line 631
    add-int/lit8 v2, v7, -0x1

    .line 632
    const/4 v7, 0x7

    if-lt v12, v7, :cond_6

    const/4 v7, 0x1

    move v8, v7

    :goto_7
    const/4 v7, 0x7

    if-lt v13, v7, :cond_7

    const/4 v7, 0x1

    :goto_8
    or-int/2addr v7, v8

    if-nez v7, :cond_a

    .line 633
    if-gez v2, :cond_5

    const/4 v2, 0x0

    .line 634
    :cond_5
    add-int/lit8 v2, v2, 0x2

    move v14, v2

    move v2, v3

    move v3, v14

    .line 635
    goto/16 :goto_1

    .line 632
    :cond_6
    const/4 v7, 0x0

    move v8, v7

    goto :goto_7

    :cond_7
    const/4 v7, 0x0

    goto :goto_8

    .line 642
    :cond_8
    if-nez p2, :cond_9

    .line 643
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Comparison method violates its general contract!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 647
    :cond_9
    move/from16 v0, p2

    invoke-static {v11, v9, v10, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_a
    move v7, v2

    move v8, v6

    move v6, v4

    move v14, v5

    move v5, v3

    move v3, v14

    goto :goto_5

    :cond_b
    move v2, v7

    move v9, v5

    goto/16 :goto_3

    :cond_c
    move v3, v2

    move v2, v7

    goto/16 :goto_3

    :cond_d
    move v2, v3

    goto :goto_6

    :cond_e
    move v2, v7

    goto/16 :goto_3

    :cond_f
    move v2, v7

    move v4, v6

    move v9, v3

    move v3, v5

    move v6, v8

    goto/16 :goto_3

    :cond_10
    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v4

    move v4, v2

    goto/16 :goto_2

    :cond_11
    move v6, v9

    move v9, v4

    move v4, v7

    move v14, v2

    move v2, v3

    move v3, v14

    goto/16 :goto_3

    :cond_12
    move v14, v4

    move v4, v7

    move v7, v8

    move v8, v6

    move v6, v2

    move v2, v14

    goto/16 :goto_4
.end method

.method private static minRunLength(I)I
    .locals 2
    .parameter

    .prologue
    .line 313
    const/4 v0, 0x0

    .line 314
    :goto_0
    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    .line 315
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    .line 316
    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    add-int/2addr v0, p0

    return v0
.end method

.method private pushRun(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 326
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    aput p1, v0, v1

    .line 327
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    aput p2, v0, v1

    .line 328
    iget v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    .line 329
    return-void
.end method

.method private static rangeCheck(III)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 793
    if-le p1, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "fromIndex("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") > toIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 794
    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 795
    :cond_1
    if-le p2, p0, :cond_2

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 796
    :cond_2
    return-void
.end method

.method private static reverseRange([Ljava/lang/Object;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    add-int/lit8 v0, p2, -0x1

    .line 291
    :goto_0
    if-ge p1, v0, :cond_0

    .line 292
    aget-object v3, p0, p1

    .line 293
    add-int/lit8 v2, p1, 0x1

    aget-object v1, p0, v0

    aput-object v1, p0, p1

    .line 294
    add-int/lit8 v1, v0, -0x1

    aput-object v3, p0, v0

    move v0, v1

    move p1, v2

    .line 295
    goto :goto_0

    .line 296
    :cond_0
    return-void
.end method

.method static sort([Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 148
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/utils/ComparableTimSort;->sort([Ljava/lang/Object;II)V

    .line 149
    return-void
.end method

.method static sort([Ljava/lang/Object;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->rangeCheck(III)V

    .line 153
    sub-int v0, p2, p1

    .line 154
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 191
    :goto_0
    return-void

    .line 157
    :cond_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 158
    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v0

    .line 159
    add-int/2addr v0, p1

    invoke-static {p0, p1, p2, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    goto :goto_0

    .line 165
    :cond_1
    new-instance v4, Lcom/badlogic/gdx/utils/ComparableTimSort;

    invoke-direct {v4, p0}, Lcom/badlogic/gdx/utils/ComparableTimSort;-><init>([Ljava/lang/Object;)V

    .line 166
    invoke-static {v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->minRunLength(I)I

    move-result v2

    .line 169
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v3

    .line 172
    if-ge v3, v2, :cond_4

    .line 173
    if-gt v0, v2, :cond_3

    move v1, v0

    .line 174
    :goto_1
    add-int v5, p1, v1

    add-int/2addr v3, p1

    invoke-static {p0, p1, v5, v3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    .line 179
    :goto_2
    invoke-direct {v4, p1, v1}, Lcom/badlogic/gdx/utils/ComparableTimSort;->pushRun(II)V

    .line 180
    invoke-direct {v4}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeCollapse()V

    .line 183
    add-int/2addr p1, v1

    .line 184
    sub-int/2addr v0, v1

    .line 185
    if-nez v0, :cond_2

    .line 189
    invoke-direct {v4}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeForceCollapse()V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 173
    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2
.end method


# virtual methods
.method public doSort([Ljava/lang/Object;II)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    .line 77
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->rangeCheck(III)V

    .line 78
    sub-int v0, p3, p2

    .line 79
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 82
    :cond_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 83
    invoke-static {p1, p2, p3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v0

    .line 84
    add-int/2addr v0, p2

    invoke-static {p1, p2, p3, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    goto :goto_0

    .line 88
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 92
    invoke-static {v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->minRunLength(I)I

    move-result v2

    .line 95
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v3

    .line 98
    if-ge v3, v2, :cond_4

    .line 99
    if-gt v0, v2, :cond_3

    move v1, v0

    .line 100
    :goto_1
    add-int v4, p2, v1

    add-int/2addr v3, p2

    invoke-static {p1, p2, v4, v3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    .line 105
    :goto_2
    invoke-direct {p0, p2, v1}, Lcom/badlogic/gdx/utils/ComparableTimSort;->pushRun(II)V

    .line 106
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeCollapse()V

    .line 109
    add-int/2addr p2, v1

    .line 110
    sub-int/2addr v0, v1

    .line 111
    if-nez v0, :cond_2

    .line 115
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeForceCollapse()V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 99
    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2
.end method
