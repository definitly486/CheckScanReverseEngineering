.class public final Lch5$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcm7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Q:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcm7<",
        "TQ;>;"
    }
.end annotation


# instance fields
.field public final b:Lcm7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcm7<",
            "TQ;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;

.field public final synthetic d:Lch5;


# direct methods
.method public constructor <init>(Lch5;Lcm7;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm7<",
            "TQ;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch5$b;->d:Lch5;

    iput-object p2, p0, Lch5$b;->b:Lcm7;

    iput-object p3, p0, Lch5$b;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lhl7;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl7<",
            "*>;I)V"
        }
    .end annotation

    iget-object p0, p0, Lch5$b;->b:Lcm7;

    invoke-interface {p0, p1, p2}, Llf9;->a(Lhl7;I)V

    return-void
.end method

.method public final c(Lhp2;)V
    .locals 0

    iget-object p0, p0, Lch5$b;->b:Lcm7;

    invoke-interface {p0, p1}, Lbm7;->c(Lhp2;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lch5;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v1, p0, Lch5$b;->d:Lch5;

    iget-object v2, p0, Lch5$b;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, p0, Lch5$b;->b:Lcm7;

    invoke-interface {p0, p1}, Lbm7;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lch5$b;->b:Lcm7;

    invoke-interface {v0, p1, p2}, Lbm7;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p2, Lch5;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v0, p0, Lch5$b;->c:Ljava/lang/Object;

    iget-object p0, p0, Lch5$b;->d:Lch5;

    invoke-virtual {p2, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return p1
.end method

.method public final getContext()Lo22;
    .locals 0

    iget-object p0, p0, Lch5$b;->b:Lcm7;

    invoke-interface {p0}, Lbm7;->getContext()Lo22;

    move-result-object p0

    return-object p0
.end method
