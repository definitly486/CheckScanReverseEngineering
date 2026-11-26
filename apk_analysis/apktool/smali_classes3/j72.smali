.class public abstract Lj72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwk8;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lwk8<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final height:I

.field private request:Lc37;

.field private final width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, -0x80000000

    .line 27
    invoke-direct {p0, v0, v0}, Lj72;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Leb9;->j(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lj72;->width:I

    iput p2, p0, Lj72;->height:I

    return-void

    :cond_0
    const-string p0, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: "

    const-string v0, " and height: "

    invoke-static {p1, p2, p0, v0}, Lrz0;->c(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final getRequest()Lc37;
    .locals 0

    iget-object p0, p0, Lj72;->request:Lc37;

    return-object p0
.end method

.method public final getSize(Lv18;)V
    .locals 1

    iget v0, p0, Lj72;->width:I

    iget p0, p0, Lj72;->height:I

    invoke-interface {p1, v0, p0}, Lv18;->b(II)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public final removeCallback(Lv18;)V
    .locals 0

    return-void
.end method

.method public final setRequest(Lc37;)V
    .locals 0

    iput-object p1, p0, Lj72;->request:Lc37;

    return-void
.end method
