.class public final Lhy3$d;
.super Ljl8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhy3;->n(ILp03;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lhy3;

.field public final synthetic f:I

.field public final synthetic g:Lp03;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lhy3;ILp03;)V
    .locals 0

    iput-object p2, p0, Lhy3$d;->e:Lhy3;

    iput p3, p0, Lhy3$d;->f:I

    iput-object p4, p0, Lhy3$d;->g:Lp03;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Ljl8;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 3

    iget-object v0, p0, Lhy3$d;->e:Lhy3;

    :try_start_0
    iget v1, p0, Lhy3$d;->f:I

    iget-object p0, p0, Lhy3$d;->g:Lp03;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lhy3;->x:Lwy3;

    invoke-virtual {v2, v1, p0}, Lwy3;->g(ILp03;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lp03;->PROTOCOL_ERROR:Lp03;

    invoke-virtual {v0, v1, v1, p0}, Lhy3;->a(Lp03;Lp03;Ljava/io/IOException;)V

    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
