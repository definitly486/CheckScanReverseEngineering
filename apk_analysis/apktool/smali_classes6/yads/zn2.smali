.class public final Lyads/zn2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ys4;
.implements Lyads/at4;


# instance fields
.field public final a:Lyads/ys4;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lyads/et4;


# direct methods
.method public constructor <init>(Lyads/ys4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/zn2;->a:Lyads/ys4;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/zn2;->b:Ljava/util/ArrayList;

    new-instance p1, Luna;

    invoke-direct {p1, p0}, Luna;-><init>(Lyads/zn2;)V

    iput-object p1, p0, Lyads/zn2;->c:Lyads/et4;

    return-void
.end method

.method public static final a(Lyads/zn2;Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lyads/zn2;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lyads/zn2;->a:Lyads/ys4;

    invoke-interface {p0}, Lyads/ys4;->a()Lyads/et4;

    move-result-object p0

    invoke-interface {p0, p1}, Lyads/et4;->b(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public final a()Lyads/et4;
    .locals 0

    .line 15
    iget-object p0, p0, Lyads/zn2;->c:Lyads/et4;

    return-object p0
.end method

.method public final b()Lyads/pv5;
    .locals 0

    iget-object p0, p0, Lyads/zn2;->a:Lyads/ys4;

    invoke-interface {p0}, Lyads/ys4;->b()Lyads/pv5;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lyads/ys4;
    .locals 0

    iget-object p0, p0, Lyads/zn2;->a:Lyads/ys4;

    return-object p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lyads/zn2;->a:Lyads/ys4;

    invoke-interface {p0}, Lyads/ys4;->d()Z

    move-result p0

    return p0
.end method
