.class public final synthetic Ldo9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tp0;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Lyads/b76;

.field public final synthetic e:Lnl3;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lyads/b76;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldo9;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Ldo9;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Ldo9;->d:Lyads/b76;

    iput-object p4, p0, Ldo9;->e:Lnl3;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-object v0, p0, Ldo9;->d:Lyads/b76;

    iget-object v1, p0, Ldo9;->e:Lnl3;

    iget-object v2, p0, Ldo9;->b:Ljava/util/ArrayList;

    iget-object p0, p0, Ldo9;->c:Ljava/util/ArrayList;

    invoke-static {v2, p0, v0, v1}, Lyads/b76;->a(Ljava/util/List;Ljava/util/List;Lyads/b76;Lnl3;)V

    return-void
.end method
