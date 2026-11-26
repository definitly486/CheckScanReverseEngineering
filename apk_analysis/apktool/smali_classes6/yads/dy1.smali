.class public final Lyads/dy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/cf2;


# instance fields
.field public final b:Lyads/bz2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lyads/bz2;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lyads/bz2;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/dy1;->b:Lyads/bz2;

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Typeface;
    .locals 1

    iget-object p0, p0, Lyads/dy1;->b:Lyads/bz2;

    sget-object v0, Lyads/cz2;->c:Lyads/cz2;

    iget-object p0, p0, Lyads/bz2;->b:Lyads/rz2;

    invoke-virtual {p0, v0}, Lyads/rz2;->a(Lyads/cz2;)Landroid/graphics/Typeface;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final b()Landroid/graphics/Typeface;
    .locals 1

    iget-object p0, p0, Lyads/dy1;->b:Lyads/bz2;

    sget-object v0, Lyads/cz2;->b:Lyads/cz2;

    iget-object p0, p0, Lyads/bz2;->b:Lyads/rz2;

    invoke-virtual {p0, v0}, Lyads/rz2;->a(Lyads/cz2;)Landroid/graphics/Typeface;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final c()Landroid/graphics/Typeface;
    .locals 1

    iget-object p0, p0, Lyads/dy1;->b:Lyads/bz2;

    sget-object v0, Lyads/cz2;->d:Lyads/cz2;

    iget-object p0, p0, Lyads/bz2;->b:Lyads/rz2;

    invoke-virtual {p0, v0}, Lyads/rz2;->a(Lyads/cz2;)Landroid/graphics/Typeface;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final d()Landroid/graphics/Typeface;
    .locals 1

    iget-object p0, p0, Lyads/dy1;->b:Lyads/bz2;

    sget-object v0, Lyads/cz2;->e:Lyads/cz2;

    iget-object p0, p0, Lyads/bz2;->b:Lyads/rz2;

    invoke-virtual {p0, v0}, Lyads/rz2;->a(Lyads/cz2;)Landroid/graphics/Typeface;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method
