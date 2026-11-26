.class public final Lyads/ub0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/kv;


# static fields
.field public static final synthetic b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lyads/ub0;

    sget-object v1, Lyads/oe3;->c:Lyads/le3;

    sget-object v1, Lyads/k55;->f:Lyads/k55;

    invoke-direct {v0, v1}, Lyads/ub0;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lyads/oe3;->a(Ljava/util/Collection;)Lyads/oe3;

    return-void
.end method
