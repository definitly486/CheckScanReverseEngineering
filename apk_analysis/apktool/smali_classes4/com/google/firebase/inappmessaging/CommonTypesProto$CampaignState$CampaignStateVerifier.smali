.class final Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState$CampaignStateVerifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CampaignStateVerifier"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/protobuf/q$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState$CampaignStateVerifier;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState$CampaignStateVerifier;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState$CampaignStateVerifier;->INSTANCE:Lcom/google/protobuf/q$e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 0

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;->forNumber(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignState;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
