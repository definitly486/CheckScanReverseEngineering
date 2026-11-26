.class public final synthetic Lcr9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:Lyads/ne;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lyads/ne;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcr9;->b:Lyads/ne;

    iput-object p2, p0, Lcr9;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcr9;->c:Ljava/util/List;

    check-cast p1, Lyads/pe;

    iget-object p0, p0, Lcr9;->b:Lyads/ne;

    invoke-static {p0, v0, p1}, Lyads/cj0;->a(Lyads/ne;Ljava/util/List;Lyads/pe;)V

    return-void
.end method
