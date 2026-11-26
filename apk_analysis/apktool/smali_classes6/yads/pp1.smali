.class public final Lyads/pp1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/h12;

.field public final b:Lyads/h12;

.field public final c:Lyads/as2;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lyads/pp1;->a:Lyads/h12;

    iput-object v0, p0, Lyads/pp1;->b:Lyads/h12;

    iput-object v0, p0, Lyads/pp1;->c:Lyads/as2;

    return-void
.end method

.method public constructor <init>(Lyads/h12;Lyads/h12;Lyads/as2;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lyads/pp1;->a:Lyads/h12;

    .line 13
    iput-object p2, p0, Lyads/pp1;->b:Lyads/h12;

    .line 14
    iput-object p3, p0, Lyads/pp1;->c:Lyads/as2;

    return-void
.end method
