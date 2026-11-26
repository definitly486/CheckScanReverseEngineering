.class public final Lub7$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf53$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lub7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Ljava/security/MessageDigest;

.field public final c:Lc78$a;


# direct methods
.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc78$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lub7$b;->c:Lc78$a;

    iput-object p1, p0, Lub7$b;->b:Ljava/security/MessageDigest;

    return-void
.end method


# virtual methods
.method public final d()Lc78$a;
    .locals 0

    iget-object p0, p0, Lub7$b;->c:Lc78$a;

    return-object p0
.end method
