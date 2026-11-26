.class public final Lbs2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll29;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll29<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lsj0;


# virtual methods
.method public final a(Ly82;)Lk29;
    .locals 1

    sget-object v0, Ly82;->MEMORY_CACHE:Ly82;

    if-ne p1, v0, :cond_0

    sget-object p0, Lyn5;->b:Lyn5;

    return-object p0

    :cond_0
    iget-object p1, p0, Lbs2;->a:Lsj0;

    if-nez p1, :cond_1

    new-instance p1, Lsj0;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lsj0;-><init>(I)V

    iput-object p1, p0, Lbs2;->a:Lsj0;

    :cond_1
    return-object p1
.end method
