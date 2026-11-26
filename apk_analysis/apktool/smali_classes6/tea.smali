.class public final synthetic Ltea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lq07;

.field public final synthetic c:Lyads/uw5;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lq07;Lyads/uw5;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltea;->b:Lq07;

    iput-object p2, p0, Ltea;->c:Lyads/uw5;

    iput-wide p3, p0, Ltea;->d:J

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ltea;->c:Lyads/uw5;

    iget-wide v1, p0, Ltea;->d:J

    iget-object p0, p0, Ltea;->b:Lq07;

    invoke-static {p0, v0, v1, v2}, Lyads/uw5;->a(Lq07;Lyads/uw5;J)Lj59;

    move-result-object p0

    return-object p0
.end method
