.class public final Lyads/zn0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/bo0;

.field public final b:Lyads/fv3;

.field public final c:Lyads/kb5;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lyads/bo0;

    invoke-direct {v0}, Lyads/bo0;-><init>()V

    new-instance v1, Lyads/fv3;

    invoke-direct {v1}, Lyads/fv3;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/zn0;->a:Lyads/bo0;

    iput-object v1, p0, Lyads/zn0;->b:Lyads/fv3;

    sget-object v0, Lyads/kb5;->a:Lyads/kb5;

    iput-object v0, p0, Lyads/zn0;->c:Lyads/kb5;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/zn0;->a:Lyads/bo0;

    invoke-virtual {p0, p1}, Lyads/bo0;->a(Landroid/content/Context;)Lyads/ao0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
