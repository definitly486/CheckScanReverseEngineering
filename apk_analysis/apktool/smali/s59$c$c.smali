.class public final Ls59$c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls59$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls59$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lnu5;

.field public final b:Lyp1;

.field public c:Z

.field public d:Ls68;

.field public e:Ls68;

.field public f:Ls68;

.field public g:Z

.field public h:Z


# direct methods
.method public constructor <init>(Lnu5;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls59$c$c;->a:Lnu5;

    new-instance p1, Lyp1;

    invoke-direct {p1}, Lyp1;-><init>()V

    iput-object p1, p0, Ls59$c$c;->b:Lyp1;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ls59$c$c;->g:Z

    return-void
.end method
