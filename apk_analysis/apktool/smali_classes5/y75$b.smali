.class public final Ly75$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly75;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final b:Ly75$a;

.field public final c:Lx75;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx75<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly75$a;Lx75;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly75$b;->b:Ly75$a;

    iput-object p2, p0, Ly75$b;->c:Lx75;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ly75$b;->c:Lx75;

    iget-object p0, p0, Ly75$b;->b:Ly75$a;

    invoke-interface {v0, p0}, Lx75;->a(Lt75;)V

    return-void
.end method
