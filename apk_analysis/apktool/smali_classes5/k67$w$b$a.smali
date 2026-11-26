.class public final Lk67$w$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk67$w$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lk67$w$b;


# direct methods
.method public constructor <init>(Lk67$w$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk67$w$b$a;->b:Lk67$w$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lk67$w$b$a;->b:Lk67$w$b;

    iget-object v0, p0, Lk67$w$b;->d:Lk67$w;

    iget-object v0, v0, Lk67$w;->b:Lk67;

    iget-object p0, p0, Lk67$w$b;->c:Lk67$x;

    sget-object v1, Lk67;->B:Lla5$b;

    invoke-virtual {v0, p0}, Lk67;->p(Lk67$x;)V

    return-void
.end method
