.class public final Lyads/c63;
.super Lyads/aj;
.source "SourceFile"


# static fields
.field public static final c:Lyads/c63;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/c63;

    invoke-direct {v0}, Lyads/c63;-><init>()V

    sput-object v0, Lyads/c63;->c:Lyads/c63;

    const-string v0, "getOptUrlFromArray"

    sput-object v0, Lyads/c63;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/aj;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/c63;->d:Ljava/lang/String;

    return-object p0
.end method
