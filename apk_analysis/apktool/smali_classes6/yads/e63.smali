.class public final Lyads/e63;
.super Lyads/uo0;
.source "SourceFile"


# static fields
.field public static final c:Lyads/e63;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/e63;

    invoke-direct {v0}, Lyads/e63;-><init>()V

    sput-object v0, Lyads/e63;->c:Lyads/e63;

    const-string v0, "getOptUrlFromDict"

    sput-object v0, Lyads/e63;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/uo0;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/e63;->d:Ljava/lang/String;

    return-object p0
.end method
