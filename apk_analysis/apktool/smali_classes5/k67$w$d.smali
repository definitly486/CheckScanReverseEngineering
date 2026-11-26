.class public final Lk67$w$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk67$w;->c(Lh88;Ldm1$a;Lla5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lk67$x;

.field public final synthetic c:Lk67$w;


# direct methods
.method public constructor <init>(Lk67$w;Lk67$x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk67$w$d;->c:Lk67$w;

    iput-object p2, p0, Lk67$w$d;->b:Lk67$x;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lk67$w$d;->c:Lk67$w;

    iget-object v0, v0, Lk67$w;->b:Lk67;

    sget-object v1, Lk67;->B:Lla5$b;

    iget-object p0, p0, Lk67$w$d;->b:Lk67$x;

    invoke-virtual {v0, p0}, Lk67;->p(Lk67$x;)V

    return-void
.end method
