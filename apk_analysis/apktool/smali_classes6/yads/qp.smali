.class public final Lyads/qp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/w75;


# instance fields
.field public final a:Lyads/t5;


# direct methods
.method public constructor <init>(Lyads/t5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/qp;->a:Lyads/t5;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lyads/qp;->a:Lyads/t5;

    sget-object v1, Lyads/s5;->t:Lyads/s5;

    invoke-virtual {v0, v1}, Lyads/t5;->a(Lyads/s5;)V

    iget-object p0, p0, Lyads/qp;->a:Lyads/t5;

    sget-object v0, Lyads/s5;->u:Lyads/s5;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lyads/t5;->a(Lyads/s5;Ljava/lang/Object;)V

    return-void
.end method
