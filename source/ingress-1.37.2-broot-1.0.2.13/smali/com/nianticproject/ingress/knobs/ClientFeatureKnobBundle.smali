.class public final Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/knobs/g;


# static fields
.field private static final a:Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;


# instance fields
.field private final allowFusedLocationUpdates:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final enableCommsAlertsTab:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final enableCommsAlertsTabVersioned:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final enableDelayGpsPause:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final enableEmbeddedYouTubePlayback:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final enableGAViolationReporting:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final enableInviteNag:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final enableMultiPhotoUi:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final enableNewDeployUi:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final enableNewHackAnimations:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final enableOtherPlayerProfiles:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final enableParticleFilter:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final enablePortalClickInComm:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final enableRecycle:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final enableReportBadPortalUiV131:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final enableScannerSmoothing:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final fireMode:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final forceSkipTrainingMissions:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final inviteNagDelayDays:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final playerAvatarOnScannerEnabled:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final playerAvatarsEnabled:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final playerProfileCacheExpirationSecs:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final playerProfileEnabled:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final portalInfoRefreshIntervalSecs:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final portalKeyCardRefreshIntervalSecs:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final refreshTimeMs:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    invoke-direct {v0}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->a:Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-boolean v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableEmbeddedYouTubePlayback:Z

    .line 295
    iput-boolean v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableParticleFilter:Z

    .line 296
    iput-boolean v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->allowFusedLocationUpdates:Z

    .line 297
    iput-boolean v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableGAViolationReporting:Z

    .line 298
    iput-boolean v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableMultiPhotoUi:Z

    .line 299
    iput-boolean v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableRecycle:Z


# Change portalKeyCardRefreshIntervalSecs dari 5sec (0x5) ke 10sec (0x7)
    .line 300
    const/4 v0, 0x7

    iput v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->portalKeyCardRefreshIntervalSecs:I

    .line 301
    iput v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->portalInfoRefreshIntervalSecs:I

    .line 302
    iput-boolean v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableInviteNag:Z


##  private final int inviteNagDelayDays = 30; (0x1e) > 1 Hari
    .line 303
    const/16 v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->inviteNagDelayDays:I

    .line 304
    iput-boolean v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableScannerSmoothing:Z

    .line 305
    iput-boolean v3, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableReportBadPortalUiV131:Z

    .line 306
    iput-boolean v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableNewHackAnimations:Z

    .line 307
    iput-boolean v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableNewDeployUi:Z

    .line 308
    iput-boolean v3, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableCommsAlertsTab:Z

    .line 309
    iput v3, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableCommsAlertsTabVersioned:I

    .line 310
    iput v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->fireMode:I

    .line 311
    sget-wide v0, Lcom/nianticproject/ingress/knobs/e;->a:J

    iput-wide v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->refreshTimeMs:J

## Change playerProfileCacheExpirationSecs dari 60sec (0x3c) ke 120sec (0x78)
    .line 312
    const-wide/16 v0, 0x78

    iput-wide v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->playerProfileCacheExpirationSecs:J

    .line 313
    iput-boolean v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableDelayGpsPause:Z

    .line 314
    iput v3, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->playerProfileEnabled:I

    .line 315
    iput v3, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->playerAvatarsEnabled:I

    .line 316
    iput v3, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->playerAvatarOnScannerEnabled:I

    .line 317
    iput v3, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableOtherPlayerProfiles:I

    .line 318
    iput-boolean v3, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->forceSkipTrainingMissions:Z

    .line 319
    iput v3, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enablePortalClickInComm:I

    .line 322
    return-void
.end method

.method static synthetic n()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->a:Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableEmbeddedYouTubePlayback:Z

    return v0
.end method

.method public final a(Lcom/nianticproject/ingress/knobs/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 383
    iget v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableCommsAlertsTabVersioned:I

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/knobs/n;->a(Lcom/nianticproject/ingress/knobs/b;I)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableParticleFilter:Z

    return v0
.end method

.method public final b(Lcom/nianticproject/ingress/knobs/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 429
    iget v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->playerProfileEnabled:I

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/knobs/n;->a(Lcom/nianticproject/ingress/knobs/b;I)Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->allowFusedLocationUpdates:Z

    return v0
.end method

.method public final c(Lcom/nianticproject/ingress/knobs/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 439
    iget v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->playerAvatarsEnabled:I

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/knobs/n;->a(Lcom/nianticproject/ingress/knobs/b;I)Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableGAViolationReporting:Z

    return v0
.end method

.method public final d(Lcom/nianticproject/ingress/knobs/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 449
    iget v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->playerAvatarOnScannerEnabled:I

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/knobs/n;->a(Lcom/nianticproject/ingress/knobs/b;I)Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableMultiPhotoUi:Z

    return v0
.end method

.method public final e(Lcom/nianticproject/ingress/knobs/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 463
    iget v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableOtherPlayerProfiles:I

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/knobs/n;->a(Lcom/nianticproject/ingress/knobs/b;I)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 513
    if-ne p0, p1, :cond_1

    .line 567
    :cond_0
    :goto_0
    return v0

    .line 515
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 516
    goto :goto_0

    .line 517
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 518
    goto :goto_0

    .line 519
    :cond_3
    check-cast p1, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    .line 520
    iget-boolean v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableEmbeddedYouTubePlayback:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableEmbeddedYouTubePlayback:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 521
    goto :goto_0

    .line 522
    :cond_4
    iget-boolean v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableGAViolationReporting:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableGAViolationReporting:Z

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 523
    goto :goto_0

    .line 524
    :cond_5
    iget-boolean v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableInviteNag:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableInviteNag:Z

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 525
    goto :goto_0

    .line 526
    :cond_6
    iget-boolean v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableMultiPhotoUi:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableMultiPhotoUi:Z

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 527
    goto :goto_0

    .line 528
    :cond_7
    iget-boolean v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableParticleFilter:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableParticleFilter:Z

    if-eq v2, v3, :cond_8

    move v0, v1

    .line 529
    goto :goto_0

    .line 530
    :cond_8
    iget-boolean v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->allowFusedLocationUpdates:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->allowFusedLocationUpdates:Z

    if-eq v2, v3, :cond_9

    move v0, v1

    .line 531
    goto :goto_0

    .line 533
    :cond_9
    iget-boolean v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableRecycle:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableRecycle:Z

    if-eq v2, v3, :cond_a

    move v0, v1

    .line 534
    goto :goto_0

    .line 535
    :cond_a
    iget v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->inviteNagDelayDays:I

    iget v3, p1, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->inviteNagDelayDays:I

    if-eq v2, v3, :cond_b

    move v0, v1

    .line 536
    goto :goto_0

    .line 537
    :cond_b
    iget v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->portalInfoRefreshIntervalSecs:I

    iget v3, p1, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->portalInfoRefreshIntervalSecs:I

    if-eq v2, v3, :cond_c

    move v0, v1

    .line 538
    goto :goto_0

    .line 539
    :cond_c
    iget v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->portalKeyCardRefreshIntervalSecs:I

    iget v3, p1, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->portalKeyCardRefreshIntervalSecs:I

    if-eq v2, v3, :cond_d

    move v0, v1

    .line 540
    goto :goto_0

    .line 541
    :cond_d
    iget-boolean v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableScannerSmoothing:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableScannerSmoothing:Z

    if-eq v2, v3, :cond_e

    move v0, v1

    .line 542
    goto :goto_0

    .line 543
    :cond_e
    iget-boolean v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableReportBadPortalUiV131:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableReportBadPortalUiV131:Z

    if-eq v2, v3, :cond_f

    move v0, v1

    .line 544
    goto :goto_0

    .line 545
    :cond_f
    iget-boolean v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableCommsAlertsTab:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableCommsAlertsTab:Z

    if-eq v2, v3, :cond_10

    move v0, v1

    .line 546
    goto :goto_0

    .line 547
    :cond_10
    iget v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableCommsAlertsTabVersioned:I

    iget v3, p1, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableCommsAlertsTabVersioned:I

    if-eq v2, v3, :cond_11

    move v0, v1

    .line 548
    goto/16 :goto_0

    .line 549
    :cond_11
    iget v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->fireMode:I

    iget v3, p1, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->fireMode:I

    if-eq v2, v3, :cond_12

    move v0, v1

    .line 550
    goto/16 :goto_0

    .line 551
    :cond_12
    iget-wide v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->refreshTimeMs:J

    iget-wide v4, p1, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->refreshTimeMs:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_13

    move v0, v1

    .line 552
    goto/16 :goto_0

    .line 553
    :cond_13
    iget-wide v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->playerProfileCacheExpirationSecs:J

    iget-wide v4, p1, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->playerProfileCacheExpirationSecs:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_14

    move v0, v1

    .line 554
    goto/16 :goto_0

    .line 555
    :cond_14
    iget-boolean v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableDelayGpsPause:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableDelayGpsPause:Z

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 556
    goto/16 :goto_0

    .line 557
    :cond_15
    iget v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->playerProfileEnabled:I

    iget v3, p1, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->playerProfileEnabled:I

    if-eq v2, v3, :cond_16

    move v0, v1

    .line 558
    goto/16 :goto_0

    .line 559
    :cond_16
    iget v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->playerAvatarsEnabled:I

    iget v3, p1, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->playerAvatarsEnabled:I

    if-eq v2, v3, :cond_17

    move v0, v1

    .line 560
    goto/16 :goto_0

    .line 561
    :cond_17
    iget v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableOtherPlayerProfiles:I

    iget v3, p1, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableOtherPlayerProfiles:I

    if-eq v2, v3, :cond_18

    move v0, v1

    .line 562
    goto/16 :goto_0

    .line 563
    :cond_18
    iget-boolean v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->forceSkipTrainingMissions:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->forceSkipTrainingMissions:Z

    if-eq v2, v3, :cond_19

    move v0, v1

    .line 564
    goto/16 :goto_0

    .line 565
    :cond_19
    iget v2, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enablePortalClickInComm:I

    iget v3, p1, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enablePortalClickInComm:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 566
    goto/16 :goto_0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableRecycle:Z

    return v0
.end method

.method public final f(Lcom/nianticproject/ingress/knobs/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 477
    iget v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enablePortalClickInComm:I

    invoke-static {p1, v0}, Lcom/nianticproject/ingress/knobs/n;->a(Lcom/nianticproject/ingress/knobs/b;I)Z

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->portalKeyCardRefreshIntervalSecs:I

    return v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableInviteNag:Z

    return v0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    .line 482
    iget-boolean v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableEmbeddedYouTubePlayback:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 485
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableGAViolationReporting:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    .line 486
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableInviteNag:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    .line 487
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableMultiPhotoUi:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v3

    .line 488
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableParticleFilter:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v3

    .line 489
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->allowFusedLocationUpdates:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v0, v3

    .line 490
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableRecycle:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    add-int/2addr v0, v3

    .line 491
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableScannerSmoothing:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v3

    .line 492
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableReportBadPortalUiV131:Z

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v3

    .line 493
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableCommsAlertsTab:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v3

    .line 494
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableCommsAlertsTabVersioned:I

    add-int/2addr v0, v3

    .line 495
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->fireMode:I

    add-int/2addr v0, v3

    .line 496
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->inviteNagDelayDays:I

    add-int/2addr v0, v3

    .line 497
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->portalInfoRefreshIntervalSecs:I

    add-int/2addr v0, v3

    .line 498
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->portalKeyCardRefreshIntervalSecs:I

    add-int/2addr v0, v3

    .line 499
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->refreshTimeMs:J

    invoke-static {v3, v4}, Lcom/google/a/h/b;->a(J)I

    move-result v3

    add-int/2addr v0, v3

    .line 500
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->playerProfileCacheExpirationSecs:J

    invoke-static {v3, v4}, Lcom/google/a/h/b;->a(J)I

    move-result v3

    add-int/2addr v0, v3

    .line 501
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableDelayGpsPause:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_a
    add-int/2addr v0, v3

    .line 502
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->playerProfileEnabled:I

    add-int/2addr v0, v3

    .line 503
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->playerAvatarsEnabled:I

    add-int/2addr v0, v3

    .line 504
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->playerAvatarOnScannerEnabled:I

    add-int/2addr v0, v3

    .line 505
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableOtherPlayerProfiles:I

    add-int/2addr v0, v3

    .line 506
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->forceSkipTrainingMissions:Z

    if-eqz v3, :cond_b

    :goto_b
    add-int/2addr v0, v1

    .line 507
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enablePortalClickInComm:I

    add-int/2addr v0, v1

    .line 508
    return v0

    :cond_0
    move v0, v2

    .line 482
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 485
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 486
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 487
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 488
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 489
    goto/16 :goto_5

    :cond_6
    move v0, v2

    .line 490
    goto :goto_6

    :cond_7
    move v0, v2

    .line 491
    goto :goto_7

    :cond_8
    move v0, v2

    .line 492
    goto :goto_8

    :cond_9
    move v0, v2

    .line 493
    goto :goto_9

    :cond_a
    move v0, v2

    .line 501
    goto :goto_a

    :cond_b
    move v1, v2

    .line 506
    goto :goto_b
.end method

.method public final i()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->inviteNagDelayDays:I

    return v0
.end method

.method public final j()J
    .locals 2

    .prologue
    .line 411
    iget-wide v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->refreshTimeMs:J

    return-wide v0
.end method

.method public final k()J
    .locals 2

    .prologue
    .line 419
    iget-wide v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->playerProfileCacheExpirationSecs:J

    return-wide v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableDelayGpsPause:Z

    return v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->forceSkipTrainingMissions:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ClientFeatureKnobBundle [ enableEmbeddedYouTubePlayback="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableEmbeddedYouTubePlayback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enableParticleFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableParticleFilter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", allowFusedLocationUpdates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->allowFusedLocationUpdates:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enableGAViolationReporting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableGAViolationReporting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enableMultiPhotoUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableMultiPhotoUi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enableRecycle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableRecycle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enableScannerSmoothing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableScannerSmoothing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enableReportBadPortalUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableReportBadPortalUiV131:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enableCommsAlertsTab="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableCommsAlertsTab:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enableCommsAlertsTabVersioned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableCommsAlertsTabVersioned:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fireMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->fireMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", portalKeyCardRefreshIntervalSecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->portalKeyCardRefreshIntervalSecs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", portalInfoRefreshIntervalSecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->portalInfoRefreshIntervalSecs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enableInviteNag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableInviteNag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", inviteNagDelayDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->inviteNagDelayDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", refreshTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->refreshTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", playerProfileCacheExpirationSecs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->playerProfileCacheExpirationSecs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enableDelayGpsPause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableDelayGpsPause:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", playerProfileEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->playerProfileEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", playerAvatarsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->playerAvatarsEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", playerAvatarOnScannerEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->playerAvatarOnScannerEnabled:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enableOtherPlayerProfiles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enableOtherPlayerProfiles:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", forceSkipTrainingMissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->forceSkipTrainingMissions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enablePortalClickInComm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->enablePortalClickInComm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
