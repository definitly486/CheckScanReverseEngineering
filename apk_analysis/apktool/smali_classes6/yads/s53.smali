.class public final Lyads/s53;
.super Lyads/po0;
.source "SourceFile"


# static fields
.field public static final c:Lyads/s53;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/s53;

    invoke-direct {v0}, Lyads/s53;-><init>()V

    sput-object v0, Lyads/s53;->c:Lyads/s53;

    const-string v0, "getOptColorFromDict"

    sput-object v0, Lyads/s53;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/po0;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/s53;->d:Ljava/lang/String;

    return-object p0
.end method
