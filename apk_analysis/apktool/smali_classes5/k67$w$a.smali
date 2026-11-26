.class public final Lk67$w$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk67$w;->b(Lla5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lla5;

.field public final synthetic c:Lk67$w;


# direct methods
.method public constructor <init>(Lk67$w;Lla5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk67$w$a;->c:Lk67$w;

    iput-object p2, p0, Lk67$w$a;->b:Lla5;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lk67$w$a;->c:Lk67$w;

    iget-object v0, v0, Lk67$w;->b:Lk67;

    iget-object v0, v0, Lk67;->v:Ldm1;

    iget-object p0, p0, Lk67$w$a;->b:Lla5;

    invoke-interface {v0, p0}, Ldm1;->b(Lla5;)V

    return-void
.end method
