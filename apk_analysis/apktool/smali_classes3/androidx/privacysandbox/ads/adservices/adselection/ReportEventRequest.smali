.class public final Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$Ext8OptIn;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Companion;,
        Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Ext10Impl;,
        Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Ext8Impl;,
        Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$ReportingDestination;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Companion;

.field public static final FLAG_REPORTING_DESTINATION_BUYER:I = 0x2

.field public static final FLAG_REPORTING_DESTINATION_SELLER:I = 0x1


# instance fields
.field private final adSelectionId:J

.field private final eventData:Ljava/lang/String;

.field private final eventKey:Ljava/lang/String;

.field private final inputEvent:Landroid/view/InputEvent;

.field private final reportingDestinations:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Companion;-><init>(Ljh2;)V

    sput-object v0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->Companion:Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Companion;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 32
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v8}, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;-><init>(JLjava/lang/String;Ljava/lang/String;ILandroid/view/InputEvent;ILjh2;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;ILandroid/view/InputEvent;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->adSelectionId:J

    iput-object p3, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->eventKey:Ljava/lang/String;

    iput-object p4, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->eventData:Ljava/lang/String;

    iput p5, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->reportingDestinations:I

    iput-object p6, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->inputEvent:Landroid/view/InputEvent;

    if-lez p5, :cond_0

    const/4 p0, 0x3

    if-gt p5, p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Invalid reporting destinations bitfield."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;ILandroid/view/InputEvent;ILjh2;)V
    .locals 7

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    .line 33
    invoke-direct/range {v0 .. v6}, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;-><init>(JLjava/lang/String;Ljava/lang/String;ILandroid/view/InputEvent;)V

    return-void
.end method

.method public static synthetic getInputEvent$annotations()V
    .locals 0
    .annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$Ext10OptIn;
    .end annotation

    return-void
.end method


# virtual methods
.method public final convertToAdServices$ads_adservices_release()Landroid/adservices/adselection/ReportEventRequest;
    .locals 3

    sget-object v0, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->INSTANCE:Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;

    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->adServicesVersion()I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Landroidx/privacysandbox/ads/adservices/internal/AdServicesInfo;->extServicesVersionS()I

    move-result v0

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Ext8Impl;->Companion:Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Ext8Impl$Companion;

    invoke-virtual {v0, p0}, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Ext8Impl$Companion;->convertReportEventRequest(Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;)Landroid/adservices/adselection/ReportEventRequest;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    sget-object v0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Ext10Impl;->Companion:Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Ext10Impl$Companion;

    invoke-virtual {v0, p0}, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest$Ext10Impl$Companion;->convertReportEventRequest(Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;)Landroid/adservices/adselection/ReportEventRequest;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-wide v3, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->adSelectionId:J

    check-cast p1, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;

    iget-wide v5, p1, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->adSelectionId:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->eventKey:Ljava/lang/String;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->eventKey:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->eventData:Ljava/lang/String;

    iget-object v3, p1, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->eventData:Ljava/lang/String;

    invoke-static {v1, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->reportingDestinations:I

    iget v3, p1, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->reportingDestinations:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->inputEvent:Landroid/view/InputEvent;

    iget-object p1, p1, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->inputEvent:Landroid/view/InputEvent;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final getAdSelectionId()J
    .locals 2

    iget-wide v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->adSelectionId:J

    return-wide v0
.end method

.method public final getEventData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->eventData:Ljava/lang/String;

    return-object p0
.end method

.method public final getEventKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->eventKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getInputEvent()Landroid/view/InputEvent;
    .locals 0

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->inputEvent:Landroid/view/InputEvent;

    return-object p0
.end method

.method public final getReportingDestinations()I
    .locals 0

    iget p0, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->reportingDestinations:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->adSelectionId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->eventKey:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->eventData:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lzg;->b(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->reportingDestinations:I

    invoke-static {v2, v0, v1}, Lej0;->b(III)I

    move-result v0

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->inputEvent:Landroid/view/InputEvent;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReportEventRequest: adSelectionId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->adSelectionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", eventKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->eventKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", eventData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->eventData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reportingDestinations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->reportingDestinations:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "inputEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/adselection/ReportEventRequest;->inputEvent:Landroid/view/InputEvent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
