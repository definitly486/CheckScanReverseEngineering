.class public final synthetic Lbr9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:Lyads/ne;

.field public final synthetic c:Lyads/cu3;

.field public final synthetic d:Lyads/r04;


# direct methods
.method public synthetic constructor <init>(Lyads/ne;Lyads/cu3;Lyads/r04;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbr9;->b:Lyads/ne;

    iput-object p2, p0, Lbr9;->c:Lyads/cu3;

    iput-object p3, p0, Lbr9;->d:Lyads/r04;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lbr9;->d:Lyads/r04;

    check-cast p1, Lyads/pe;

    iget-object v1, p0, Lbr9;->b:Lyads/ne;

    iget-object p0, p0, Lbr9;->c:Lyads/cu3;

    invoke-static {v1, p0, v0, p1}, Lyads/cj0;->c(Lyads/ne;Lyads/cu3;Lyads/r04;Lyads/pe;)V

    return-void
.end method
