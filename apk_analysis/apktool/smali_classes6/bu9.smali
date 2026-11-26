.class public final synthetic Lbu9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/e42;

.field public final synthetic c:Lnl3;

.field public final synthetic d:Ljava/util/LinkedHashSet;


# direct methods
.method public synthetic constructor <init>(Lyads/e42;Lnl3;Ljava/util/LinkedHashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbu9;->b:Lyads/e42;

    iput-object p2, p0, Lbu9;->c:Lnl3;

    iput-object p3, p0, Lbu9;->d:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbu9;->d:Ljava/util/LinkedHashSet;

    check-cast p1, Lyads/s45;

    iget-object v1, p0, Lbu9;->b:Lyads/e42;

    iget-object p0, p0, Lbu9;->c:Lnl3;

    invoke-static {v1, p0, v0, p1}, Lyads/e42;->a(Lyads/e42;Lnl3;Ljava/util/Set;Lyads/s45;)Lj59;

    move-result-object p0

    return-object p0
.end method
