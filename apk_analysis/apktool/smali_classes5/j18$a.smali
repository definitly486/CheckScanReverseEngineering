.class public final Lj18$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxl3<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lj18;


# direct methods
.method public constructor <init>(Lj18;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj18$a;->b:Lj18;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    iget-object p0, p0, Lj18$a;->b:Lj18;

    iget-object p0, p0, Lj18;->c:Lxl3;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lxl3;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "The zipper returned a null value"

    invoke-static {p0, p1}, Lnq5;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
