.class public final Lyads/a53;
.super Lyads/b53;
.source "SourceFile"


# static fields
.field public static final c:Lyads/a53;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyads/a53;

    invoke-direct {v0}, Lyads/a53;-><init>()V

    sput-object v0, Lyads/a53;->c:Lyads/a53;

    const-string v0, "getKeys"

    sput-object v0, Lyads/a53;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyads/b53;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    sget-object p0, Lyads/a53;->d:Ljava/lang/String;

    return-object p0
.end method
