.class public final synthetic Ljw9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/tp0;


# instance fields
.field public final synthetic b:Lyads/gs2;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lll3;


# direct methods
.method public synthetic constructor <init>(Lyads/gs2;Ljava/lang/String;Lll3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljw9;->b:Lyads/gs2;

    iput-object p2, p0, Ljw9;->c:Ljava/lang/String;

    iput-object p3, p0, Ljw9;->d:Lll3;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Ljw9;->c:Ljava/lang/String;

    iget-object v1, p0, Ljw9;->d:Lll3;

    iget-object p0, p0, Ljw9;->b:Lyads/gs2;

    invoke-static {p0, v0, v1}, Lyads/gs2;->a(Lyads/gs2;Ljava/lang/String;Lll3;)V

    return-void
.end method
