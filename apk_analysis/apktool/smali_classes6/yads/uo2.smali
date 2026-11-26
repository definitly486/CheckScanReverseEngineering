.class public abstract Lyads/uo2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/util/Set;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Z

.field public c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    sget-object v0, Lyads/r43;->a:Lyads/r43;

    sget-object v0, Lyads/k53;->a:Lyads/k53;

    sget-object v0, Lyads/u63;->a:Lyads/u63;

    sget-object v0, Lyads/m33;->a:Lyads/m33;

    sget-object v0, Lyads/n33;->a:Lyads/n33;

    sget-object v0, Lyads/z63;->a:Lyads/z63;

    sget-object v0, Lyads/y63;->a:Lyads/y63;

    sget-object v0, Lyads/i33;->a:Lyads/i33;

    const-string v7, "getUrlValue"

    const-string v8, "getBooleanValue"

    const-string v1, "getIntegerValue"

    const-string v2, "getNumberValue"

    const-string v3, "getStringValue"

    const-string v4, "getColorValue"

    const-string v5, "getColorValue"

    const-string v6, "getUrlValue"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyr;->k0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lyads/uo2;->d:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/uo2;->a:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lyads/uo2;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a(Lyads/bp2;)Ljava/lang/Object;
.end method

.method public final a(Z)V
    .locals 1

    iget-boolean v0, p0, Lyads/uo2;->b:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lyads/uo2;->b:Z

    return-void
.end method

.method public final a()Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lyads/uo2;->b:Z

    return p0
.end method

.method public abstract b()Ljava/util/List;
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lyads/uo2;->a:Ljava/lang/String;

    return-object p0
.end method

.method public abstract d()Ljava/util/List;
.end method
