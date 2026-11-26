.class public final Lyads/e33;
.super Lyads/dj;
.source "SourceFile"


# static fields
.field public static final c:Lyads/e33;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/e33;

    invoke-direct {v0}, Lyads/e33;-><init>()V

    sput-object v0, Lyads/e33;->c:Lyads/e33;

    const-string v0, "getArrayUrl"

    sput-object v0, Lyads/e33;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/dj;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/e33;->d:Ljava/lang/String;

    return-object p0
.end method
