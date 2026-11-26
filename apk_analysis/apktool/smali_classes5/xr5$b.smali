.class public final Lxr5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxr5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final b:Lxr5$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxr5$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic c:Lxr5;


# direct methods
.method public constructor <init>(Lxr5;Lxr5$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lxr5$a<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxr5$b;->c:Lxr5;

    iput-object p2, p0, Lxr5$b;->b:Lxr5$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lxr5$b;->c:Lxr5;

    iget-object v0, v0, Lg1;->b:Lwr5;

    iget-object p0, p0, Lxr5$b;->b:Lxr5$a;

    invoke-interface {v0, p0}, Lwr5;->a(Lls5;)V

    return-void
.end method
