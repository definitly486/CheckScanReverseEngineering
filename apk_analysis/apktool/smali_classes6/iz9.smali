.class public final synthetic Liz9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lyads/is4;

.field public final synthetic c:Lyads/cn1;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lyads/is4;Lyads/cn1;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liz9;->b:Lyads/is4;

    iput-object p2, p0, Liz9;->c:Lyads/cn1;

    iput-object p3, p0, Liz9;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Liz9;->c:Lyads/cn1;

    iget-object v1, p0, Liz9;->d:Ljava/util/List;

    iget-object p0, p0, Liz9;->b:Lyads/is4;

    invoke-static {p0, v0, v1}, Lyads/is4;->a(Lyads/is4;Lyads/cn1;Ljava/util/List;)Lj59;

    move-result-object p0

    return-object p0
.end method
