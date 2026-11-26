.class public final Laj0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltd2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laj0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lio7;

.field public final b:Lk23;


# direct methods
.method public constructor <init>(Lio7;Lk23;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laj0$b;->a:Lio7;

    iput-object p2, p0, Laj0$b;->b:Lk23;

    return-void
.end method


# virtual methods
.method public final a(Lx48;Lzz5;)Ltd2;
    .locals 2

    new-instance v0, Laj0;

    iget-object p1, p1, Lx48;->a:Lh24;

    iget-object v1, p0, Laj0$b;->a:Lio7;

    iget-object p0, p0, Laj0$b;->b:Lk23;

    invoke-direct {v0, p1, p2, v1, p0}, Laj0;-><init>(Lh24;Lzz5;Lio7;Lk23;)V

    return-object v0
.end method
