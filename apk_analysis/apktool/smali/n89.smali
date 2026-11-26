.class public final synthetic Ln89;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leh8$a;


# instance fields
.field public final synthetic b:Lr89;

.field public final synthetic c:Lhz;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lr89;Lhz;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln89;->b:Lr89;

    iput-object p2, p0, Ln89;->c:Lhz;

    iput p3, p0, Ln89;->d:I

    return-void
.end method


# virtual methods
.method public final execute()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ln89;->b:Lr89;

    iget-object v0, v0, Lr89;->d:Lpk9;

    iget v1, p0, Ln89;->d:I

    add-int/lit8 v1, v1, 0x1

    iget-object p0, p0, Ln89;->c:Lhz;

    invoke-interface {v0, p0, v1}, Lpk9;->a(Ls29;I)V

    const/4 p0, 0x0

    return-object p0
.end method
