.class public final synthetic Ljr9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tt3;
.implements Lyads/y85;


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ljr9;->b:Ljava/lang/Object;

    iput-object p2, p0, Ljr9;->c:Ljava/lang/Object;

    iput-object p3, p0, Ljr9;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ljr9;->b:Ljava/lang/Object;

    check-cast v0, Lyads/ts3;

    iget-object v1, p0, Ljr9;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Ljr9;->d:Ljava/lang/Object;

    check-cast p0, Lnl3;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lyads/ts3;->a(Lyads/ts3;Ljava/lang/String;Lnl3;Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ljr9;->b:Ljava/lang/Object;

    check-cast v0, Lyads/ne;

    iget-object v1, p0, Ljr9;->c:Ljava/lang/Object;

    check-cast v1, Lyads/vz2;

    iget-object p0, p0, Ljr9;->d:Ljava/lang/Object;

    check-cast p0, Lyads/oi0;

    check-cast p1, Lyads/pe;

    invoke-static {v0, v1, p0, p1}, Lyads/cj0;->a(Lyads/ne;Lyads/vz2;Lyads/oi0;Lyads/pe;)V

    return-void
.end method
