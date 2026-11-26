.class public final Lc67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Lv13;

.field public final c:Lc31;


# direct methods
.method public constructor <init>(Lv13;Lc31;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc67;->b:Lv13;

    iput-object p2, p0, Lc67;->c:Lc31;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lc67;->b:Lv13;

    sget-object v1, Lj59;->a:Lj59;

    iget-object p0, p0, Lc67;->c:Lc31;

    invoke-virtual {p0, v0, v1}, Lc31;->D(Lr22;Ljava/lang/Object;)V

    return-void
.end method
