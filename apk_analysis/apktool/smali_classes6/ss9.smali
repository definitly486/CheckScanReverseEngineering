.class public final synthetic Lss9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/d22;

.field public final synthetic c:Lyads/s22;

.field public final synthetic d:Lyads/fs2;

.field public final synthetic e:Lyads/tc1;


# direct methods
.method public synthetic constructor <init>(Lyads/d22;Lyads/s22;Lyads/fs2;Lyads/tc1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lss9;->b:Lyads/d22;

    iput-object p2, p0, Lss9;->c:Lyads/s22;

    iput-object p3, p0, Lss9;->d:Lyads/fs2;

    iput-object p4, p0, Lss9;->e:Lyads/tc1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lss9;->d:Lyads/fs2;

    iget-object v1, p0, Lss9;->e:Lyads/tc1;

    iget-object v2, p0, Lss9;->b:Lyads/d22;

    iget-object p0, p0, Lss9;->c:Lyads/s22;

    invoke-static {v2, p0, v0, v1, p1}, Lyads/d22;->c(Lyads/d22;Lyads/s22;Lyads/fs2;Lyads/tc1;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
