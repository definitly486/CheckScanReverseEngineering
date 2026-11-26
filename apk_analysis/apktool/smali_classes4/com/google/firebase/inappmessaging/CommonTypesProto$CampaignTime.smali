.class public final Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;
.super Lcom/google/protobuf/o;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTimeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/inappmessaging/CommonTypesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CampaignTime"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/o<",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;",
        ">;",
        "Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTimeOrBuilder;"
    }
.end annotation


# static fields
.field public static final DATE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

.field private static volatile PARSER:Lx36; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx36<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIME_FIELD_NUMBER:I = 0x2

.field public static final TIME_ZONE_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private date_:Lh92;

.field private timeZone_:Ljava/lang/String;

.field private time_:Lju8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    const-class v1, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v1, v0}, Lcom/google/protobuf/o;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/o;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/o;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->timeZone_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lh92;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->setDate(Lh92;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lh92;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->mergeDate(Lh92;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->clearDate()V

    return-void
.end method

.method public static synthetic access$400(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lju8;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->setTime(Lju8;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lju8;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->mergeTime(Lju8;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->clearTime()V

    return-void
.end method

.method public static synthetic access$700(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->setTimeZone(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->clearTimeZone()V

    return-void
.end method

.method public static synthetic access$900(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;Lfx0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->setTimeZoneBytes(Lfx0;)V

    return-void
.end method

.method private clearDate()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->date_:Lh92;

    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->bitField0_:I

    return-void
.end method

.method private clearTime()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->time_:Lju8;

    iget v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->bitField0_:I

    return-void
.end method

.method private clearTimeZone()V
    .locals 1

    invoke-static {}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->getTimeZone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->timeZone_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    return-object v0
.end method

.method private mergeDate(Lh92;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->date_:Lh92;

    if-eqz v0, :cond_0

    invoke-static {}, Lh92;->b()Lh92;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->date_:Lh92;

    invoke-static {v0}, Lh92;->c(Lh92;)Lh92$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o$a;->mergeFrom(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p1

    check-cast p1, Lh92$b;

    invoke-virtual {p1}, Lcom/google/protobuf/o$a;->buildPartial()Lcom/google/protobuf/o;

    move-result-object p1

    check-cast p1, Lh92;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->date_:Lh92;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->date_:Lh92;

    :goto_0
    iget p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->bitField0_:I

    return-void
.end method

.method private mergeTime(Lju8;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->time_:Lju8;

    if-eqz v0, :cond_0

    invoke-static {}, Lju8;->b()Lju8;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->time_:Lju8;

    invoke-static {v0}, Lju8;->c(Lju8;)Lju8$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/o$a;->mergeFrom(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p1

    check-cast p1, Lju8$b;

    invoke-virtual {p1}, Lcom/google/protobuf/o$a;->buildPartial()Lcom/google/protobuf/o;

    move-result-object p1

    check-cast p1, Lju8;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->time_:Lju8;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->time_:Lju8;

    :goto_0
    iget p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->createBuilder()Lcom/google/protobuf/o$a;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/o;->createBuilder(Lcom/google/protobuf/o;)Lcom/google/protobuf/o$a;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseDelimitedFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lcom/google/protobuf/f;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    return-object p0
.end method

.method public static parseFrom(Lfx0;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;
    .locals 1

    .line 10
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    return-object p0
.end method

.method public static parseFrom(Lfx0;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;
    .locals 1

    .line 11
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Lfx0;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;
    .locals 1

    .line 14
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/io/InputStream;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;
    .locals 1

    .line 9
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;Ljava/nio/ByteBuffer;Lcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;
    .locals 1

    .line 12
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p0}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[B)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/j;)Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/o;->parseFrom(Lcom/google/protobuf/o;[BLcom/google/protobuf/j;)Lcom/google/protobuf/o;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    return-object p0
.end method

.method public static parser()Lx36;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lx36<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-virtual {v0}, Lcom/google/protobuf/o;->getParserForType()Lx36;

    move-result-object v0

    return-object v0
.end method

.method private setDate(Lh92;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->date_:Lh92;

    iget p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->bitField0_:I

    return-void
.end method

.method private setTime(Lju8;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->time_:Lju8;

    iget p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->bitField0_:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->bitField0_:I

    return-void
.end method

.method private setTimeZone(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->timeZone_:Ljava/lang/String;

    return-void
.end method

.method private setTimeZoneBytes(Lfx0;)V
    .locals 0

    invoke-static {p1}, Lcom/google/protobuf/a;->checkByteStringIsUtf8(Lfx0;)V

    invoke-virtual {p1}, Lfx0;->p()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->timeZone_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/o$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

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
    sget-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->PARSER:Lx36;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->PARSER:Lx36;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/o$b;

    sget-object p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-direct {p0, p2}, Lcom/google/protobuf/o$b;-><init>(Lcom/google/protobuf/o;)V

    sput-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->PARSER:Lx36;

    goto :goto_0

    :catchall_0
    move-exception p0

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
    sget-object p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "date_"

    const-string p2, "time_"

    const-string p3, "timeZone_"

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0000\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u0208"

    sget-object p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->DEFAULT_INSTANCE:Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/o;->newMessageInfo(Lcom/google/protobuf/a0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime$Builder;-><init>(Lcom/google/firebase/inappmessaging/CommonTypesProto$1;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;-><init>()V

    return-object p0

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

.method public getDate()Lh92;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->date_:Lh92;

    if-nez p0, :cond_0

    invoke-static {}, Lh92;->b()Lh92;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getTime()Lju8;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->time_:Lju8;

    if-nez p0, :cond_0

    invoke-static {}, Lju8;->b()Lju8;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->timeZone_:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeZoneBytes()Lfx0;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->timeZone_:Ljava/lang/String;

    invoke-static {p0}, Lfx0;->f(Ljava/lang/String;)Lfx0$h;

    move-result-object p0

    return-object p0
.end method

.method public hasDate()Z
    .locals 1

    iget p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasTime()Z
    .locals 0

    iget p0, p0, Lcom/google/firebase/inappmessaging/CommonTypesProto$CampaignTime;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
