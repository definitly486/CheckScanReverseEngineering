.class public final Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
.super Lcom/google/protobuf/o;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/MessagesProto$CardMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/MessagesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CardMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o<",
        "Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/MessagesProto$CardMessageOrBuilder;"
    }
.end annotation


# static fields
.field public static final BACKGROUND_HEX_COLOR_FIELD_NUMBER:I = 0x5

.field public static final BODY_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

.field public static final LANDSCAPE_IMAGE_URL_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lx36; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx36<",
            "Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final PORTRAIT_IMAGE_URL_FIELD_NUMBER:I = 0x3

.field public static final PRIMARY_ACTION_BUTTON_FIELD_NUMBER:I = 0x6

.field public static final PRIMARY_ACTION_FIELD_NUMBER:I = 0x7

.field public static final SECONDARY_ACTION_BUTTON_FIELD_NUMBER:I = 0x8

.field public static final SECONDARY_ACTION_FIELD_NUMBER:I = 0x9

.field public static final TITLE_FIELD_NUMBER:I = 0x1


# instance fields
.field private backgroundHexColor_:Ljava/lang/String;

.field private bitField0_:I

.field private body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

.field private landscapeImageUrl_:Ljava/lang/String;

.field private portraitImageUrl_:Ljava/lang/String;

.field private primaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

.field private primaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

.field private secondaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

.field private secondaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

.field private title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    const-class v1, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v1, v0}, Lcom/google/protobuf/o;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/o;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/o;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->portraitImageUrl_:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->landscapeImageUrl_:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->backgroundHexColor_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$1500()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object v0
.end method

.method public static synthetic access$1600(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->setTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->mergeTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->clearTitle()V

    return-void
.end method

.method public static synthetic access$1900(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->setBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-void
.end method

.method public static synthetic access$2000(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->mergeBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V

    return-void
.end method

.method public static synthetic access$2100(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->clearBody()V

    return-void
.end method

.method public static synthetic access$2200(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->setPortraitImageUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2300(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->clearPortraitImageUrl()V

    return-void
.end method

.method public static synthetic access$2400(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lfx0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->setPortraitImageUrlBytes(Lfx0;)V

    return-void
.end method

.method public static synthetic access$2500(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->setLandscapeImageUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->clearLandscapeImageUrl()V

    return-void
.end method

.method public static synthetic access$2700(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lfx0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->setLandscapeImageUrlBytes(Lfx0;)V

    return-void
.end method

.method public static synthetic access$2800(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->setBackgroundHexColor(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2900(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->clearBackgroundHexColor()V

    return-void
.end method

.method public static synthetic access$3000(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lfx0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->setBackgroundHexColorBytes(Lfx0;)V

    return-void
.end method

.method public static synthetic access$3100(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->setPrimaryActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V

    return-void
.end method

.method public static synthetic access$3200(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->mergePrimaryActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V

    return-void
.end method

.method public static synthetic access$3300(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->clearPrimaryActionButton()V

    return-void
.end method

.method public static synthetic access$3400(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->setPrimaryAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-void
.end method

.method public static synthetic access$3500(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->mergePrimaryAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-void
.end method

.method public static synthetic access$3600(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->clearPrimaryAction()V

    return-void
.end method

.method public static synthetic access$3700(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->setSecondaryActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V

    return-void
.end method

.method public static synthetic access$3800(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->mergeSecondaryActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V

    return-void
.end method

.method public static synthetic access$3900(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->clearSecondaryActionButton()V

    return-void
.end method

.method public static synthetic access$4000(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->setSecondaryAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-void
.end method

.method public static synthetic access$4100(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->mergeSecondaryAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V

    return-void
.end method

.method public static synthetic access$4200(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->clearSecondaryAction()V

    return-void
.end method

.method private clearBackgroundHexColor()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getBackgroundHexColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->backgroundHexColor_:Ljava/lang/String;

    return-void
.end method

.method private clearBody()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    return-void
.end method

.method private clearLandscapeImageUrl()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getLandscapeImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->landscapeImageUrl_:Ljava/lang/String;

    return-void
.end method

.method private clearPortraitImageUrl()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->getPortraitImageUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->portraitImageUrl_:Ljava/lang/String;

    return-void
.end method

.method private clearPrimaryAction()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    return-void
.end method

.method private clearPrimaryActionButton()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    return-void
.end method

.method private clearSecondaryAction()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    return-void
.end method

.method private clearSecondaryActionButton()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    return-void
.end method

.method private clearTitle()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    iget v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object v0
.end method

.method private mergeBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o$a;->mergeFrom(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/o$a;->buildPartial()Lcom/google/protobuf/o;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    :goto_0
    iget p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    return-void
.end method

.method private mergePrimaryAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o$a;->mergeFrom(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/o$a;->buildPartial()Lcom/google/protobuf/o;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    :goto_0
    iget p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    return-void
.end method

.method private mergePrimaryActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o$a;->mergeFrom(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/o$a;->buildPartial()Lcom/google/protobuf/o;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    :goto_0
    iget p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    return-void
.end method

.method private mergeSecondaryAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o$a;->mergeFrom(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Action$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/o$a;->buildPartial()Lcom/google/protobuf/o;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    :goto_0
    iget p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    return-void
.end method

.method private mergeSecondaryActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o$a;->mergeFrom(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Button$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/o$a;->buildPartial()Lcom/google/protobuf/o;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    :goto_0
    iget p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    return-void
.end method

.method private mergeTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o$a;->mergeFrom(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Text$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/o$a;->buildPartial()Lcom/google/protobuf/o;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    :goto_0
    iget p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->createBuilder()Lcom/google/protobuf/o$a;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/o;->createBuilder(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p0
.end method

.method public static parseFrom(Lfx0;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p0
.end method

.method public static parseFrom(Lfx0;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1

    .line 12
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[B)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[BLcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p0
.end method

.method public static parser()Lx36;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx36<",
            "Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->getParserForType()Lx36;

    move-result-object v0

    return-object v0
.end method

.method private setBackgroundHexColor(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->backgroundHexColor_:Ljava/lang/String;

    return-void
.end method

.method private setBackgroundHexColorBytes(Lfx0;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/a;->checkByteStringIsUtf8(Lfx0;)V

    invoke-virtual {p1}, Lfx0;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->backgroundHexColor_:Ljava/lang/String;

    return-void
.end method

.method private setBody(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    iget p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    return-void
.end method

.method private setLandscapeImageUrl(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->landscapeImageUrl_:Ljava/lang/String;

    return-void
.end method

.method private setLandscapeImageUrlBytes(Lfx0;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/a;->checkByteStringIsUtf8(Lfx0;)V

    invoke-virtual {p1}, Lfx0;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->landscapeImageUrl_:Ljava/lang/String;

    return-void
.end method

.method private setPortraitImageUrl(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->portraitImageUrl_:Ljava/lang/String;

    return-void
.end method

.method private setPortraitImageUrlBytes(Lfx0;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/a;->checkByteStringIsUtf8(Lfx0;)V

    invoke-virtual {p1}, Lfx0;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->portraitImageUrl_:Ljava/lang/String;

    return-void
.end method

.method private setPrimaryAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    iget p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    return-void
.end method

.method private setPrimaryActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    iget p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    return-void
.end method

.method private setSecondaryAction(Lcom/google/firebase/inappmessaging/MessagesProto$Action;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    iget p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    return-void
.end method

.method private setSecondaryActionButton(Lcom/google/firebase/inappmessaging/MessagesProto$Button;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    iget p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    return-void
.end method

.method private setTitle(Lcom/google/firebase/inappmessaging/MessagesProto$Text;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    iget p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/o$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object p0, Lcom/google/firebase/inappmessaging/MessagesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lud;->d()V

    :pswitch_0
    return-object p1

    :pswitch_1
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->PARSER:Lx36;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->PARSER:Lx36;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/o$b;

    sget-object p2, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-direct {p0, p2}, Lcom/google/protobuf/o$b;-><init>(Lcom/google/protobuf/o;)V

    sput-object p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->PARSER:Lx36;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-object p0

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "title_"

    const-string v2, "body_"

    const-string v3, "portraitImageUrl_"

    const-string v4, "landscapeImageUrl_"

    const-string v5, "backgroundHexColor_"

    const-string v6, "primaryActionButton_"

    const-string v7, "primaryAction_"

    const-string v8, "secondaryActionButton_"

    const-string v9, "secondaryAction_"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0000\t\u0000\u0001\u0001\t\t\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u0208\u0004\u0208\u0005\u0208\u0006\u1009\u0002\u0007\u1009\u0003\u0008\u1009\u0004\t\u1009\u0005"

    sget-object p2, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/o;->newMessageInfo(Lcom/google/protobuf/a0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage$Builder;-><init>(Lcom/google/firebase/inappmessaging/MessagesProto$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBackgroundHexColor()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->backgroundHexColor_:Ljava/lang/String;

    return-object p0
.end method

.method public getBackgroundHexColorBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->backgroundHexColor_:Ljava/lang/String;

    invoke-static {p0}, Lfx0;->f(Ljava/lang/String;)Lfx0$h;

    move-result-object p0

    return-object p0
.end method

.method public getBody()Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->body_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getLandscapeImageUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->landscapeImageUrl_:Ljava/lang/String;

    return-object p0
.end method

.method public getLandscapeImageUrlBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->landscapeImageUrl_:Ljava/lang/String;

    invoke-static {p0}, Lfx0;->f(Ljava/lang/String;)Lfx0$h;

    move-result-object p0

    return-object p0
.end method

.method public getPortraitImageUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->portraitImageUrl_:Ljava/lang/String;

    return-object p0
.end method

.method public getPortraitImageUrlBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->portraitImageUrl_:Ljava/lang/String;

    invoke-static {p0}, Lfx0;->f(Ljava/lang/String;)Lfx0$h;

    move-result-object p0

    return-object p0
.end method

.method public getPrimaryAction()Lcom/google/firebase/inappmessaging/MessagesProto$Action;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getPrimaryActionButton()Lcom/google/firebase/inappmessaging/MessagesProto$Button;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->primaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getSecondaryAction()Lcom/google/firebase/inappmessaging/MessagesProto$Action;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryAction_:Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Action;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Action;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getSecondaryActionButton()Lcom/google/firebase/inappmessaging/MessagesProto$Button;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->secondaryActionButton_:Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Button;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Button;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getTitle()Lcom/google/firebase/inappmessaging/MessagesProto$Text;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->title_:Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/firebase/inappmessaging/MessagesProto$Text;->getDefaultInstance()Lcom/google/firebase/inappmessaging/MessagesProto$Text;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public hasBody()Z
    .locals 0

    iget p0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasPrimaryAction()Z
    .locals 0

    iget p0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasPrimaryActionButton()Z
    .locals 0

    iget p0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasSecondaryAction()Z
    .locals 0

    iget p0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasSecondaryActionButton()Z
    .locals 0

    iget p0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasTitle()Z
    .locals 1

    iget p0, p0, Lcom/google/firebase/inappmessaging/MessagesProto$CardMessage;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
