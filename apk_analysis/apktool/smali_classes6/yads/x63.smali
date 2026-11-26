.class public final Lyads/x63;
.super Lyads/u46;
.source "SourceFile"


# static fields
.field public static final c:Lyads/x63;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/x63;

    invoke-direct {v0}, Lyads/x63;-><init>()V

    sput-object v0, Lyads/x63;->c:Lyads/x63;

    const-string v0, "getUrlFromDict"

    sput-object v0, Lyads/x63;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/u46;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/x63;->d:Ljava/lang/String;

    return-object p0
.end method
