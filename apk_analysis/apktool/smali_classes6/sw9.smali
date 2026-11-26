.class public final synthetic Lsw9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/i14;


# instance fields
.field public final synthetic a:Lyads/h50;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lyads/h50;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsw9;->a:Lyads/h50;

    iput-object p2, p0, Lsw9;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lyads/cs;Lyads/kx5;)V
    .locals 1

    iget-object v0, p0, Lsw9;->a:Lyads/h50;

    iget-object p0, p0, Lsw9;->b:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, p2}, Lyads/h50;->a(Ljava/lang/Object;Lyads/cs;Lyads/kx5;)V

    return-void
.end method
