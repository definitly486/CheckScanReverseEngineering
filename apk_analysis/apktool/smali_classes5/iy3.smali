.class public final Liy3;
.super Ljl8;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lhy3;

.field public final synthetic f:Lr07;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lhy3;Lr07;)V
    .locals 0

    iput-object p2, p0, Liy3;->e:Lhy3;

    iput-object p3, p0, Liy3;->f:Lr07;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Ljl8;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Liy3;->e:Lhy3;

    iget-object v1, v0, Lhy3;->b:Lhy3$b;

    iget-object p0, p0, Liy3;->f:Lr07;

    iget-object p0, p0, Lr07;->b:Ljava/lang/Object;

    check-cast p0, Lor7;

    invoke-virtual {v1, v0, p0}, Lhy3$b;->b(Lhy3;Lor7;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
