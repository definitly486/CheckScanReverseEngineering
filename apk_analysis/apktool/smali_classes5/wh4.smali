.class public abstract Lwh4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwk4;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwh4;->a:Ljava/lang/String;

    iput p2, p0, Lwh4;->b:I

    return-void
.end method


# virtual methods
.method public d()I
    .locals 0

    iget p0, p0, Lwh4;->b:I

    return p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lwh4;->a:Ljava/lang/String;

    return-object p0
.end method
