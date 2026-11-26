.class public abstract Lcb8;
.super Ly03;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcb8$d;,
        Lcb8$g;,
        Lcb8$c;,
        Lcb8$a;,
        Lcb8$f;,
        Lcb8$e;,
        Lcb8$b;,
        Lcb8$h;
    }
.end annotation


# instance fields
.field public final a:Ly03;

.field public b:Z


# direct methods
.method public constructor <init>(Ly03;)V
    .locals 1

    invoke-direct {p0}, Ly03;-><init>()V

    new-instance v0, Lbb8;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    iput-object p1, p0, Lcb8;->a:Ly03;

    invoke-virtual {p1}, Ly03;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcb8;->b:Z

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lcb8;->b:Z

    return p0
.end method
