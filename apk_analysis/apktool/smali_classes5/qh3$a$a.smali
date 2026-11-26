.class public final Lqh3$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqh3$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lbc8;

.field public final c:J


# direct methods
.method public constructor <init>(JLbc8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lqh3$a$a;->b:Lbc8;

    iput-wide p1, p0, Lqh3$a$a;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lqh3$a$a;->b:Lbc8;

    iget-wide v1, p0, Lqh3$a$a;->c:J

    invoke-interface {v0, v1, v2}, Lbc8;->request(J)V

    return-void
.end method
