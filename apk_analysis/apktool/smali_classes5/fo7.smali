.class public final synthetic Lfo7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldm3;


# instance fields
.field public final synthetic b:Lgo7;


# direct methods
.method public synthetic constructor <init>(Lgo7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfo7;->b:Lgo7;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    check-cast p2, Lj59;

    check-cast p3, Lo22;

    iget-object p0, p0, Lfo7;->b:Lgo7;

    invoke-virtual {p0}, Lgo7;->release()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
