.class public abstract Lyads/xe1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lyads/zr2;

.field public static final b:Lyads/l66;

.field public static final c:Lyads/l66;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lyads/et4;->a:Lyads/et4;

    new-instance v1, Lyads/zr2;

    const-string v2, "_"

    invoke-direct {v1, v2, v0}, Lyads/zr2;-><init>(Ljava/lang/String;Lyads/et4;)V

    sput-object v1, Lyads/xe1;->a:Lyads/zr2;

    new-instance v0, Llg;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Llg;-><init>(I)V

    sput-object v0, Lyads/xe1;->b:Lyads/l66;

    new-instance v0, Lmg;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lmg;-><init>(I)V

    sput-object v0, Lyads/xe1;->c:Lyads/l66;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final b(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
