.class public final synthetic Lru9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tt3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru9;->b:I

    iput p2, p0, Lru9;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lru9;->c:I

    check-cast p1, Lyads/iw4;

    iget p0, p0, Lru9;->b:I

    invoke-static {p0, v0, p1}, Lyads/eq2;->a(IILyads/iw4;)V

    return-void
.end method
