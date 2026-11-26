.class public final Lyads/d63;
.super Lyads/to0;
.source "SourceFile"


# static fields
.field public static final c:Lyads/d63;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/d63;

    invoke-direct {v0}, Lyads/d63;-><init>()V

    sput-object v0, Lyads/d63;->c:Lyads/d63;

    const-string v0, "getOptUrlFromDict"

    sput-object v0, Lyads/d63;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/to0;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/d63;->d:Ljava/lang/String;

    return-object p0
.end method
