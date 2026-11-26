.class public final Lco8;
.super Ljl8;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lhy3$c;)V
    .locals 0

    iput-object p2, p0, Lco8;->e:Lll3;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Ljl8;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object p0, p0, Lco8;->e:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    const-wide/16 v0, -0x1

    return-wide v0
.end method
