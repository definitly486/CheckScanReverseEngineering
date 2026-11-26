.class public final Lpz6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Llf9;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Llf9;"
    }
.end annotation


# instance fields
.field public final b:Lc31;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc31<",
            "Lp91<",
            "+TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc31;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc31<",
            "-",
            "Lp91<",
            "+TE;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpz6;->b:Lc31;

    return-void
.end method


# virtual methods
.method public final a(Lhl7;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl7<",
            "*>;I)V"
        }
    .end annotation

    iget-object p0, p0, Lpz6;->b:Lc31;

    invoke-virtual {p0, p1, p2}, Lc31;->a(Lhl7;I)V

    return-void
.end method
