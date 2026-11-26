.class public final Lyads/a63;
.super Lyads/so0;
.source "SourceFile"


# static fields
.field public static final c:Lyads/a63;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/a63;

    invoke-direct {v0}, Lyads/a63;-><init>()V

    sput-object v0, Lyads/a63;->c:Lyads/a63;

    const-string v0, "getOptStringFromDict"

    sput-object v0, Lyads/a63;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/so0;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/a63;->d:Ljava/lang/String;

    return-object p0
.end method
